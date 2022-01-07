
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct board_info {size_t imagelen; size_t const magic; size_t const load_addr; size_t const entry; } ;
typedef int FILE ;


 int ERR (char*,size_t) ;
 int ERRS (char*) ;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 size_t HDR_LENGTH ;
 int HDR_OFF_CHECKSUM ;
 int HDR_OFF_ENTRY ;
 int HDR_OFF_FILLER0 ;
 int HDR_OFF_FILLER1 ;
 int HDR_OFF_FILLER2 ;
 int HDR_OFF_IMAGELEN ;
 int HDR_OFF_LOAD_ADDR ;
 int HDR_OFF_MAGIC1 ;
 int PADDING_BYTE ;
 int crc32_csum (unsigned char*,size_t const) ;
 int fread (unsigned char*,size_t const,int,int *) ;
 int free (unsigned char*) ;
 size_t fwrite (unsigned char*,size_t,int,int *) ;
 unsigned char* malloc (size_t) ;
 int memset (unsigned char*,int ,size_t) ;
 scalar_t__ strip_padding ;
 int writel (unsigned char*,int ,size_t const) ;

__attribute__((used)) static int meraki_build_hdr(const struct board_info *board, const size_t klen,
       FILE *out, FILE *in)
{
 unsigned char *kernel;
 unsigned char *buf;
 size_t buflen;
 size_t kspace;

 size_t rc;
 buflen = board->imagelen;
 kspace = buflen - HDR_LENGTH;

 if (klen > kspace) {
  ERR("kernel file is too big - max size: 0x%08lX\n", kspace);
  return EXIT_FAILURE;
 }


 if (strip_padding)
  buflen = klen + HDR_LENGTH;


 buf = malloc(buflen);
 if (buf == ((void*)0)) {
  ERRS("no memory for buffer: %s\n");
  return EXIT_FAILURE;
 }
 memset(buf, PADDING_BYTE, buflen);


 kernel = buf + HDR_LENGTH;
 fread(kernel, klen, 1, in);


 writel(buf, HDR_OFF_MAGIC1, board->magic);
 writel(buf, HDR_OFF_FILLER0, 0);
 writel(buf, HDR_OFF_FILLER1, 0);
 writel(buf, HDR_OFF_FILLER2, 0);


 writel(buf, HDR_OFF_LOAD_ADDR, board->load_addr);
 writel(buf, HDR_OFF_ENTRY, board->entry);


 writel(buf, HDR_OFF_IMAGELEN, klen);


 writel(buf, HDR_OFF_CHECKSUM, 0);


 crc32_csum(buf, klen + HDR_LENGTH);

 rc = fwrite(buf, buflen, 1, out);

 free(buf);

 return rc == 1 ? EXIT_SUCCESS : EXIT_FAILURE;
}
