
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;
typedef int uint32_t ;
struct mylo_partition_header {void* len; void* crc; } ;
struct fw_block {int flags; size_t crc; size_t size; int * name; } ;
typedef int ph ;
typedef int buff ;
typedef int FILE ;


 size_t ALIGN (size_t,int) ;
 int BLOCK_FLAG_HAVEHDR ;
 int FILE_BUF_LEN ;
 void* HOST_TO_LE32 (size_t) ;
 int dbgmsg (int,char*,int *) ;
 int errmsg (int,char*,int *) ;
 scalar_t__ errno ;
 int fclose (int *) ;
 int * fopen (int *,char*) ;
 int fread (char*,size_t,int,int *) ;
 scalar_t__ get_file_crc (struct fw_block*) ;
 scalar_t__ write_out_data (int *,char*,size_t,int *) ;
 scalar_t__ write_out_padding (int *,size_t,int,int *) ;

int
write_out_file(FILE *outfile, struct fw_block *block, uint32_t *crc)
{
 char buff[FILE_BUF_LEN];
 size_t buflen = sizeof(buff);
 FILE *f;
 size_t len;

 errno = 0;

 if (block->name == ((void*)0)) {
  return 0;
 }

 if ((block->flags & BLOCK_FLAG_HAVEHDR) != 0) {
  struct mylo_partition_header ph;

  if (get_file_crc(block) != 0)
          return -1;

  ph.crc = HOST_TO_LE32(block->crc);
  ph.len = HOST_TO_LE32(block->size);

  if (write_out_data(outfile, (uint8_t *)&ph, sizeof(ph), crc) != 0)
   return -1;
 }

 f = fopen(block->name,"r");
 if (errno) {
  errmsg(1,"unable to open file: %s", block->name);
  return -1;
 }

 len = block->size;
 while (len > 0) {
  if (len < buflen)
   buflen = len;


  errno = 0;
  fread(buff, buflen, 1, f);
  if (errno != 0) {
   errmsg(1,"unable to read from file: %s",block->name);
   return -1;
  }

  if (write_out_data(outfile, buff, buflen, crc) != 0)
   return -1;

  len -= buflen;
 }

 fclose(f);


 len = ALIGN(len,4) - block->size;
 if (write_out_padding(outfile, len, 0xFF, crc))
  return -1;

 dbgmsg(1,"file %s written out", block->name);
 return 0;
}
