
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct trx_header {int version; void* crc32; int length; void* magic; } ;
typedef int buf ;
typedef int FILE ;


 int EIO ;
 int SEEK_SET ;
 scalar_t__ TRX_FLAGS_OFFSET ;
 int TRX_MAGIC ;
 void* cpu_to_le32 (int) ;
 int fprintf (int ,char*,char*) ;
 size_t fread (int *,int,int ,int *) ;
 int fseek (int *,scalar_t__,int ) ;
 size_t fwrite (struct trx_header*,int,int,int *) ;
 size_t le32_to_cpu (int ) ;
 int otrx_crc32 (int,int *,size_t) ;
 int otrx_min (int,size_t) ;
 int stderr ;
 char* trx_path ;

__attribute__((used)) static int otrx_create_write_hdr(FILE *trx, struct trx_header *hdr) {
 size_t bytes, length;
 uint8_t buf[1024];
 uint32_t crc32;

 hdr->magic = cpu_to_le32(TRX_MAGIC);
 hdr->version = 1;

 fseek(trx, 0, SEEK_SET);
 bytes = fwrite(hdr, 1, sizeof(struct trx_header), trx);
 if (bytes != sizeof(struct trx_header)) {
  fprintf(stderr, "Couldn't write TRX header to %s\n", trx_path);
  return -EIO;
 }

 length = le32_to_cpu(hdr->length);

 crc32 = 0xffffffff;
 fseek(trx, TRX_FLAGS_OFFSET, SEEK_SET);
 length -= TRX_FLAGS_OFFSET;
 while ((bytes = fread(buf, 1, otrx_min(sizeof(buf), length), trx)) > 0) {
  crc32 = otrx_crc32(crc32, buf, bytes);
  length -= bytes;
 }
 hdr->crc32 = cpu_to_le32(crc32);

 fseek(trx, 0, SEEK_SET);
 bytes = fwrite(hdr, 1, sizeof(struct trx_header), trx);
 if (bytes != sizeof(struct trx_header)) {
  fprintf(stderr, "Couldn't write TRX header to %s\n", trx_path);
  return -EIO;
 }

 return 0;
}
