
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int wint_t ;
typedef int wchar_t ;
typedef size_t pg_wchar ;
struct TYPE_3__ {int lt; } ;
struct TYPE_4__ {TYPE_1__ info; } ;


 int PG_ISLOWER ;






 int UCHAR_MAX ;
 int islower (unsigned char) ;
 int islower_l (unsigned char,int ) ;
 int iswlower (int ) ;
 int iswlower_l (int ,int ) ;
 int* pg_char_properties ;
 TYPE_2__* pg_regex_locale ;
 int pg_regex_strategy ;
 int u_islower (size_t) ;

__attribute__((used)) static int
pg_wc_islower(pg_wchar c)
{
 switch (pg_regex_strategy)
 {
  case 131:
   return (c <= (pg_wchar) 127 &&
     (pg_char_properties[c] & PG_ISLOWER));
  case 129:
   if (sizeof(wchar_t) >= 4 || c <= (pg_wchar) 0xFFFF)
    return iswlower((wint_t) c);

  case 133:
   return (c <= (pg_wchar) UCHAR_MAX &&
     islower((unsigned char) c));
  case 128:





  case 132:




   break;
  case 130:



   break;
 }
 return 0;
}
