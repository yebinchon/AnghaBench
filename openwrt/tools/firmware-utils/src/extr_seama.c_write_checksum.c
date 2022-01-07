
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int FILE ;


 size_t fwrite (int *,int,int,int *) ;

__attribute__((used)) static size_t write_checksum(FILE * fh, uint8_t * checksum)
{
 return fwrite(checksum, sizeof(uint8_t), 16, fh);
}
