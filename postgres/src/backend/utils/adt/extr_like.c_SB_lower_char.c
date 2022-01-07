
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* pg_locale_t ;
struct TYPE_4__ {int lt; } ;
struct TYPE_5__ {TYPE_1__ info; } ;


 char pg_ascii_tolower (unsigned char) ;
 char pg_tolower (unsigned char) ;
 char tolower_l (unsigned char,int ) ;

__attribute__((used)) static char
SB_lower_char(unsigned char c, pg_locale_t locale, bool locale_is_c)
{
 if (locale_is_c)
  return pg_ascii_tolower(c);




 else
  return pg_tolower(c);
}
