
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ WORD ;
typedef int WCHAR ;
typedef int UINT ;


 int* CVTBL (int ,scalar_t__) ;
 scalar_t__ FF_CODE_PAGE ;
 int oem2uni ;

WCHAR ff_oem2uni (
 WCHAR oem,
 WORD cp
)
{
 const WCHAR *p;
 WCHAR c = 0;
 UINT i = 0, n, li, hi;


 if (oem < 0x80) {
  c = oem;

 } else {
  if (cp == FF_CODE_PAGE) {
   p = CVTBL(oem2uni, FF_CODE_PAGE);
   hi = sizeof CVTBL(oem2uni, FF_CODE_PAGE) / 4 - 1;
   li = 0;
   for (n = 16; n; n--) {
    i = li + (hi - li) / 2;
    if (oem == p[i * 2]) break;
    if (oem > p[i * 2]) {
     li = i;
    } else {
     hi = i;
    }
   }
   if (n != 0) c = p[i * 2 + 1];
  }
 }

 return c;
}
