
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timelib_tzinfo ;


 scalar_t__ memcmp (unsigned char const*,char*,int) ;

__attribute__((used)) static int skip_64bit_preamble(const unsigned char **tzf, timelib_tzinfo *tz)
{
 if (memcmp(*tzf, "TZif2", 5) == 0) {
  *tzf += 20;
  return 1;
 } else if (memcmp(*tzf, "TZif3", 5) == 0) {
  *tzf += 20;
  return 1;
 } else {
  return 0;
 }
}
