
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef scalar_t__ uint16_t ;
struct zyn_rombin_hdr {int osize; scalar_t__ ocsum; scalar_t__ mmap_addr; int flags; int type; int addr; } ;
struct fw_mmap {scalar_t__ addr; } ;
struct fw_block {scalar_t__ file_size; scalar_t__ type; int align; int file_name; } ;
struct csum_state {int dummy; } ;
typedef int hdr ;
struct TYPE_2__ {scalar_t__ romio_offs; scalar_t__ bootext_size; scalar_t__ flash_base; int code_start; } ;
typedef int FILE ;


 scalar_t__ ALIGN (scalar_t__,int) ;
 scalar_t__ BE16_TO_HOST (scalar_t__) ;
 scalar_t__ BLOCK_TYPE_BOOTEXT ;
 int DBG (int,char*,scalar_t__,...) ;
 int ERR (char*,int ) ;
 scalar_t__ HOST_TO_BE16 (scalar_t__) ;
 int MMAP_ALIGN ;
 scalar_t__ MMAP_DATA_SIZE ;
 int OBJECT_TYPE_BOOTEXT ;
 int ROMBIN_FLAG_OCSUM ;
 struct fw_block* blocks ;
 TYPE_1__* board ;
 struct fw_block* bootext_block ;
 scalar_t__ csum_get (struct csum_state*) ;
 int csum_init (struct csum_state*) ;
 int memset (struct zyn_rombin_hdr*,int ,int) ;
 int num_blocks ;
 int read_magic (scalar_t__*) ;
 int write_out_block (int *,struct fw_block*,struct csum_state*) ;
 int write_out_data (int *,int *,int,int *) ;
 int write_out_header (int *,struct zyn_rombin_hdr*) ;
 int write_out_mmap (int *,struct fw_mmap*,struct csum_state*) ;
 int write_out_padding (int *,scalar_t__,int,struct csum_state*) ;

int
write_out_image(FILE *outfile)
{
 struct fw_block *block;
 struct fw_mmap mmap;
 struct zyn_rombin_hdr hdr;
 struct csum_state css;
 int i, res;
 uint32_t offset;
 uint32_t padlen;
 uint16_t csum;
 uint16_t t;


 memset(&hdr, 0, sizeof(hdr));
 hdr.addr = board->code_start;
 hdr.type = OBJECT_TYPE_BOOTEXT;
 hdr.flags = ROMBIN_FLAG_OCSUM;

 offset = board->romio_offs;

 res = write_out_header(outfile, &hdr);
 if (res)
  return res;

 offset += sizeof(hdr);

 csum_init(&css);
 res = write_out_block(outfile, bootext_block, &css);
 if (res)
  return res;

 offset += bootext_block->file_size;
 if (offset > (board->romio_offs + board->bootext_size)) {
  ERR("bootext file '%s' is too big", bootext_block->file_name);
  return -1;
 }

 padlen = ALIGN(offset, MMAP_ALIGN) - offset;
 res = write_out_padding(outfile, padlen, 0xFF, &css);
 if (res)
  return res;

 offset += padlen;

 mmap.addr = board->flash_base + offset;
 res = write_out_mmap(outfile, &mmap, &css);
 if (res)
  return res;

 offset += MMAP_DATA_SIZE;

 if ((offset - board->romio_offs) < board->bootext_size) {
  padlen = board->romio_offs + board->bootext_size - offset;
  res = write_out_padding(outfile, padlen, 0xFF, &css);
  if (res)
   return res;
  offset += padlen;

  DBG(2, "bootext end at %08x", offset);
 }

 for (i = 0; i < num_blocks; i++) {
  block = &blocks[i];

  if (block->type == BLOCK_TYPE_BOOTEXT)
   continue;

  padlen = ALIGN(offset, block->align) - offset;
  res = write_out_padding(outfile, padlen, 0xFF, &css);
  if (res)
   return res;
  offset += padlen;

  res = write_out_block(outfile, block, &css);
  if (res)
   return res;
  offset += block->file_size;
 }

 padlen = ALIGN(offset, 4) - offset;
 res = write_out_padding(outfile, padlen, 0xFF, &css);
 if (res)
  return res;
 offset += padlen;

 csum = csum_get(&css);
 hdr.mmap_addr = mmap.addr;
 hdr.osize = 2;

 res = read_magic(&hdr.ocsum);
 if (res)
  return res;
 hdr.ocsum = BE16_TO_HOST(hdr.ocsum);

 if (csum <= hdr.ocsum)
  t = hdr.ocsum - csum;
 else
  t = hdr.ocsum - csum - 1;

 DBG(2, "ocsum=%04x, csum=%04x, fix=%04x", hdr.ocsum, csum, t);

 t = HOST_TO_BE16(t);
 res = write_out_data(outfile, (uint8_t *)&t, 2, ((void*)0));
 if (res)
  return res;


 res = write_out_header(outfile, &hdr);

 return res;
}
