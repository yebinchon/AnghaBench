
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timelib_tzinfo ;


 unsigned int TIMELIB_TZINFO_PHP ;
 unsigned int TIMELIB_TZINFO_ZONEINFO ;
 scalar_t__ memcmp (unsigned char const*,char*,int) ;
 int read_php_preamble (unsigned char const**,int *) ;
 int read_tzif_preamble (unsigned char const**,int *) ;

__attribute__((used)) static int read_preamble(const unsigned char **tzf, timelib_tzinfo *tz, unsigned int *type)
{

 if (memcmp(*tzf, "PHP", 3) == 0) {
  *type = TIMELIB_TZINFO_PHP;
  return read_php_preamble(tzf, tz);
 } else if (memcmp(*tzf, "TZif", 4) == 0) {
  *type = TIMELIB_TZINFO_ZONEINFO;
  return read_tzif_preamble(tzf, tz);
 } else {
  return -1;
 }
}
