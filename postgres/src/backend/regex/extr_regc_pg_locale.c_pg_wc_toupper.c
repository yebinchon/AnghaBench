
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int wint_t ;
typedef int wchar_t ;
typedef scalar_t__ pg_wchar ;
struct TYPE_3__ {int lt; } ;
struct TYPE_4__ {TYPE_1__ info; } ;
 int UCHAR_MAX ;
 scalar_t__ pg_ascii_toupper (unsigned char) ;
 TYPE_2__* pg_regex_locale ;
 int pg_regex_strategy ;
 scalar_t__ toupper (unsigned char) ;
 scalar_t__ toupper_l (unsigned char,int ) ;
 scalar_t__ towupper (int ) ;
 scalar_t__ towupper_l (int ,int ) ;
 scalar_t__ u_toupper (scalar_t__) ;

__attribute__((used)) static pg_wchar
pg_wc_toupper(pg_wchar c)
{
 switch (pg_regex_strategy)
 {
  case 131:
   if (c <= (pg_wchar) 127)
    return pg_ascii_toupper((unsigned char) c);
   return c;
  case 129:

   if (c <= (pg_wchar) 127)
    return pg_ascii_toupper((unsigned char) c);
   if (sizeof(wchar_t) >= 4 || c <= (pg_wchar) 0xFFFF)
    return towupper((wint_t) c);

  case 133:

   if (c <= (pg_wchar) 127)
    return pg_ascii_toupper((unsigned char) c);
   if (c <= (pg_wchar) UCHAR_MAX)
    return toupper((unsigned char) c);
   return c;
  case 128:





  case 132:




   return c;
  case 130:



   break;
 }
 return 0;
}
