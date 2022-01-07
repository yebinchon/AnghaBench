
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {char* country_code; } ;
struct TYPE_5__ {TYPE_1__ location; scalar_t__ bc; } ;
typedef TYPE_2__ timelib_tzinfo ;



__attribute__((used)) static int read_tzif_preamble(const unsigned char **tzf, timelib_tzinfo *tz)
{
 uint32_t version;


 switch ((*tzf)[4]) {
  case '\0':
   version = 0;
   break;
  case '2':
   version = 2;
   break;
  case '3':
   version = 3;
   break;
  default:
   return -1;
 }
 *tzf += 5;


 tz->bc = 0;
 tz->location.country_code[0] = '?';
 tz->location.country_code[1] = '?';
 tz->location.country_code[2] = '\0';


 *tzf += 15;

 return version;
}
