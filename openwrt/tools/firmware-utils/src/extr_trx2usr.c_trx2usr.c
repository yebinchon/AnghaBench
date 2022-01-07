
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
struct usr_header {scalar_t__ len; int crc32; scalar_t__* reserved; int hardware_revision; int compatibility_id; int version; int magic; } ;
typedef int hdr ;
typedef int FILE ;


 int CHUNK ;
 int COMPAT_ID ;
 int CRC32_INIT ;
 int EPI_VERSION ;
 int HARDWARE_REV ;
 int SEEK_SET ;
 int TRX_MAGIC ;
 int USR_MAGIC ;
 struct usr_header buf ;
 int crc32 (int ,int *,size_t) ;
 scalar_t__ ferror (int *) ;
 int fprintf (int ,char*) ;
 size_t fread (struct usr_header,int,int ,int *) ;
 int fseek (int *,long,int ) ;
 int fwrite (struct usr_header*,int,int,int *) ;
 int stderr ;
 int strlen (int ) ;
 scalar_t__ strncmp (struct usr_header,int ,int ) ;

__attribute__((used)) static int trx2usr(FILE* trx, FILE* usr)
{
 struct usr_header hdr;
 size_t n;

 hdr.magic = USR_MAGIC;
 hdr.len = 0;
 hdr.crc32 = CRC32_INIT;
 hdr.version = EPI_VERSION;
 hdr.compatibility_id = COMPAT_ID;
 hdr.hardware_revision = HARDWARE_REV;
 hdr.reserved[0] = 0;
 hdr.reserved[1] = 0;
 fwrite(& hdr, sizeof(hdr), 1, usr);
 while ((n = fread(buf, 1, CHUNK, trx)))
 {
  if (hdr.len == 0 && strncmp(buf, TRX_MAGIC, strlen(TRX_MAGIC)) != 0)
  {
   break;
  }
  fwrite(& buf, 1, n, usr);
  hdr.len += n;
  hdr.crc32 = crc32( hdr.crc32, (uint8 *) & buf, n);
 }
 fseek(usr, 0L, SEEK_SET);
 fwrite(& hdr, sizeof(hdr), 1, usr);
 if (n != 0)
 {
  fprintf(stderr, "Input is not a TRX file\n");
  return 1;
 }
 if (hdr.len == 0)
 {
  fprintf(stderr, "Empty input\n");
  return 1;
 }
 if (ferror(trx))
 {
  fprintf(stderr, "Read error\n");
  return 1;
 }
 if (ferror(usr))
 {
  fprintf(stderr, "Write error\n");
  return 1;
 }
 return 0;
}
