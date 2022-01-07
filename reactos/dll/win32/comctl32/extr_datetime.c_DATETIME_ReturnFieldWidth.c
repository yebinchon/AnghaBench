
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef char WCHAR ;
struct TYPE_6__ {int nrFields; int* fieldspec; int* buflen; scalar_t__ textbuf; } ;
struct TYPE_5__ {int cx; } ;
typedef TYPE_1__ SIZE ;
typedef int SHORT ;
typedef char const* LPCWSTR ;
typedef int LONG ;
typedef int LCTYPE ;
typedef int INT ;
typedef int HDC ;
typedef TYPE_2__ DATETIME_INFO ;


 int DT_STRING ;



 int GetLocaleInfoW (int ,int,char*,int ) ;
 int GetTextExtentPoint32W (int ,char const*,int ,TYPE_1__*) ;

 int LOCALE_SABBREVDAYNAME1 ;
 int LOCALE_SABBREVMONTHNAME1 ;
 int LOCALE_SDAYNAME1 ;
 int LOCALE_SMONTHNAME1 ;
 int LOCALE_USER_DEFAULT ;
 int TRACE (char*,int,int) ;
 int WARN (char*,int,int) ;
 int lstrlenW (char const*) ;
 int memcpy (char*,scalar_t__,int) ;
 int strlenW (char const*) ;

__attribute__((used)) static void
DATETIME_ReturnFieldWidth (const DATETIME_INFO *infoPtr, HDC hdc, int count, SHORT *width)
{


    static const WCHAR fld_d1W[] = { '2', 0 };
    static const WCHAR fld_d2W[] = { '2', '2', 0 };
    static const WCHAR fld_d4W[] = { '2', '2', '2', '2', 0 };
    static const WCHAR fld_am1[] = { 'A', 0 };
    static const WCHAR fld_am2[] = { 'A', 'M', 0 };
    int spec;
    WCHAR buffer[80];
    LPCWSTR bufptr;
    SIZE size;

    TRACE ("%d,%d\n", infoPtr->nrFields, count);
    if (count>infoPtr->nrFields || count < 0) {
 WARN ("buffer overrun, have %d want %d\n", infoPtr->nrFields, count);
 return;
    }

    if (!infoPtr->fieldspec) return;

    spec = infoPtr->fieldspec[count];
    if (spec & DT_STRING) {
 int txtlen = infoPtr->buflen[count];

        if (txtlen > 79)
            txtlen = 79;
 memcpy (buffer, infoPtr->textbuf + (spec &~ DT_STRING), txtlen * sizeof(WCHAR));
 buffer[txtlen] = 0;
 bufptr = buffer;
    }
    else {
        switch (spec) {
     case 143:
     case 145:
     case 144:
     case 140:
     case 142:
     case 141:
     case 139:

     case 133:
     case 135:
     case 134:
     case 130:
     case 132:
     case 131:
     case 129:
         bufptr = fld_d2W;
         break;
            case 146:
     case 147:
         bufptr = fld_d4W;
         break;
     case 136:
     case 148:
     case 137:
     case 149:
     {
  static const WCHAR fld_day[] = {'W','e','d','n','e','s','d','a','y',0};
  static const WCHAR fld_abbrday[] = {'W','e','d',0};
  static const WCHAR fld_mon[] = {'S','e','p','t','e','m','b','e','r',0};
  static const WCHAR fld_abbrmon[] = {'D','e','c',0};

  const WCHAR *fall;
  LCTYPE lctype;
  INT i, max_count;
  LONG cx;


  switch (spec) {
  case 137:
      fall = fld_abbrday;
      lctype = LOCALE_SABBREVDAYNAME1;
      max_count = 7;
      break;
  case 149:
      fall = fld_day;
      lctype = LOCALE_SDAYNAME1;
      max_count = 7;
      break;
  case 136:
      fall = fld_abbrmon;
      lctype = LOCALE_SABBREVMONTHNAME1;
      max_count = 12;
      break;
  default:
      fall = fld_mon;
      lctype = LOCALE_SMONTHNAME1;
      max_count = 12;
      break;
  }

  cx = 0;
  for (i = 0; i < max_count; i++)
  {
      if(GetLocaleInfoW(LOCALE_USER_DEFAULT, lctype + i,
   buffer, lstrlenW(buffer)))
      {
   GetTextExtentPoint32W(hdc, buffer, lstrlenW(buffer), &size);
   if (size.cx > cx) cx = size.cx;
      }
      else
      {
          GetTextExtentPoint32W(hdc, fall, lstrlenW(fall), &size);
   cx = size.cx;
          break;
      }
  }
  *width = cx;
  return;
     }
     case 138:
         bufptr = fld_am1;
         break;
     case 128:
         bufptr = fld_am2;
         break;
     default:
         bufptr = fld_d1W;
         break;
        }
    }
    GetTextExtentPoint32W (hdc, bufptr, strlenW(bufptr), &size);
    *width = size.cx;
}
