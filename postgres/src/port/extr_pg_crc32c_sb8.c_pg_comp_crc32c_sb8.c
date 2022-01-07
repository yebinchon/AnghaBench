
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8 ;
typedef int uint32 ;
typedef int pg_crc32c ;


 int CRC8 (int ) ;
 int** pg_crc32c_table ;

pg_crc32c
pg_comp_crc32c_sb8(pg_crc32c crc, const void *data, size_t len)
{
 const unsigned char *p = data;
 const uint32 *p4;





 while (len > 0 && ((uintptr_t) p & 3))
 {
  crc = CRC8(*p++);
  len--;
 }




 p4 = (const uint32 *) p;
 while (len >= 8)
 {
  uint32 a = *p4++ ^ crc;
  uint32 b = *p4++;
  const uint8 c0 = b >> 24;
  const uint8 c1 = b >> 16;
  const uint8 c2 = b >> 8;
  const uint8 c3 = b;
  const uint8 c4 = a >> 24;
  const uint8 c5 = a >> 16;
  const uint8 c6 = a >> 8;
  const uint8 c7 = a;


  crc =
   pg_crc32c_table[0][c0] ^ pg_crc32c_table[1][c1] ^
   pg_crc32c_table[2][c2] ^ pg_crc32c_table[3][c3] ^
   pg_crc32c_table[4][c4] ^ pg_crc32c_table[5][c5] ^
   pg_crc32c_table[6][c6] ^ pg_crc32c_table[7][c7];

  len -= 8;
 }




 p = (const unsigned char *) p4;
 while (len > 0)
 {
  crc = CRC8(*p++);
  len--;
 }

 return crc;
}
