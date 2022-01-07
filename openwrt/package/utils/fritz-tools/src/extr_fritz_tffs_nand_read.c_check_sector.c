
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;


 int oobbuf ;
 int read_oob_sector_health ;
 scalar_t__ read_sectoroob (int ) ;
 int read_uint8 (int ,int) ;

__attribute__((used)) static int check_sector(off_t pos)
{
 if (!read_oob_sector_health) {
  return 1;
 }
 if (read_sectoroob(pos)) {
  return 0;
 }
 if (read_uint8(oobbuf, 0x00) != 0xff) {

  return 0;
 }
 if (read_uint8(oobbuf, 0x01) != 0xff) {

  return 0;
 }
 return 1;
}
