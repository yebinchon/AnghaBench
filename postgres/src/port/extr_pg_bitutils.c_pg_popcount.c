
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64 ;
typedef int uint32 ;


 scalar_t__ TYPEALIGN (int,char const*) ;
 scalar_t__* pg_number_of_ones ;
 scalar_t__ pg_popcount32 (int ) ;
 scalar_t__ pg_popcount64 (int ) ;

uint64
pg_popcount(const char *buf, int bytes)
{
 uint64 popcnt = 0;
 if (buf == (const char *) TYPEALIGN(4, buf))
 {
  const uint32 *words = (const uint32 *) buf;

  while (bytes >= 4)
  {
   popcnt += pg_popcount32(*words++);
   bytes -= 4;
  }

  buf = (const char *) words;
 }



 while (bytes--)
  popcnt += pg_number_of_ones[(unsigned char) *buf++];

 return popcnt;
}
