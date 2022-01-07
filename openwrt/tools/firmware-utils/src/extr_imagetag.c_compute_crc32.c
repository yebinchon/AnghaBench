
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int readbuf ;
typedef int FILE ;


 int SEEK_SET ;
 int cyg_crc32_accumulate (int ,int *,size_t) ;
 int feof (int *) ;
 int ferror (int *) ;
 size_t fread (int *,int,size_t,int *) ;
 int fseek (int *,size_t,int ) ;

uint32_t compute_crc32(uint32_t crc, FILE *binfile, size_t compute_start, size_t compute_len)
{
 uint8_t readbuf[1024];
 size_t read;

 fseek(binfile, compute_start, SEEK_SET);


 while (binfile && !feof(binfile) && !ferror(binfile) && (compute_len >= sizeof(readbuf))) {
  read = fread(readbuf, sizeof(uint8_t), sizeof(readbuf), binfile);
  crc = cyg_crc32_accumulate(crc, readbuf, read);
  compute_len = compute_len - read;
 }


 if (binfile && !feof(binfile) && !ferror(binfile) && (compute_len > 0)) {
  read = fread(readbuf, sizeof(uint8_t), compute_len, binfile);
  crc = cyg_crc32_accumulate(crc, readbuf, read);
 }

 return crc;
}
