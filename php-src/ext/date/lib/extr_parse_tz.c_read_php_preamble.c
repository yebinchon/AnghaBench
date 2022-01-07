
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {char* country_code; } ;
struct TYPE_5__ {int bc; TYPE_1__ location; } ;
typedef TYPE_2__ timelib_tzinfo ;


 int memcpy (char*,unsigned char const*,int) ;

__attribute__((used)) static int read_php_preamble(const unsigned char **tzf, timelib_tzinfo *tz)
{
 uint32_t version;


 version = (*tzf)[3] - '0';
 *tzf += 4;


 tz->bc = (**tzf == '\1');
 *tzf += 1;


 memcpy(tz->location.country_code, *tzf, 2);
 tz->location.country_code[2] = '\0';
 *tzf += 2;


 *tzf += 13;

 return version;
}
