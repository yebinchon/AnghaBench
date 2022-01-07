
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* decimal_point; } ;


 TYPE_1__* localeconv () ;
 char* strchr (char*,char const) ;

__attribute__((used)) static inline void from_locale(char *buffer)
{
 const char *point;
 char *pos;

 point = localeconv()->decimal_point;
 if (*point == '.') {

  return;
 }

 pos = strchr(buffer, *point);
 if (pos)
  *pos = '.';
}
