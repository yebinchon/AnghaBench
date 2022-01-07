
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* pg_locale_t ;
struct TYPE_4__ {int lt; } ;
struct TYPE_5__ {scalar_t__ provider; TYPE_1__ info; } ;


 scalar_t__ COLLPROVIDER_ICU ;
 scalar_t__ COLLPROVIDER_LIBC ;
 scalar_t__ IS_HIGHBIT_SET (char) ;
 int isalpha (unsigned char) ;
 int isalpha_l (unsigned char,int ) ;

__attribute__((used)) static int
pattern_char_isalpha(char c, bool is_multibyte,
      pg_locale_t locale, bool locale_is_c)
{
 if (locale_is_c)
  return (c >= 'A' && c <= 'Z') || (c >= 'a' && c <= 'z');
 else if (is_multibyte && IS_HIGHBIT_SET(c))
  return 1;
 else if (locale && locale->provider == COLLPROVIDER_ICU)
  return IS_HIGHBIT_SET(c) ||
   (c >= 'A' && c <= 'Z') || (c >= 'a' && c <= 'z');




 else
  return isalpha((unsigned char) c);
}
