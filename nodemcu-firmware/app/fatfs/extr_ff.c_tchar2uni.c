
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int TCHAR ;
typedef int DWORD ;
typedef int BYTE ;


 int CODEPAGE ;
 scalar_t__ IsSurrogate (int) ;
 int IsSurrogateH (int) ;
 int IsSurrogateL (int) ;
 scalar_t__ dbc_1st (int) ;
 int dbc_2nd (int) ;
 int ff_oem2uni (int,int ) ;

__attribute__((used)) static DWORD tchar2uni (
 const TCHAR** str
)
{
 DWORD uc;
 const TCHAR *p = *str;
 BYTE b;
 WCHAR wc;

 wc = (BYTE)*p++;
 if (dbc_1st((BYTE)wc)) {
  b = (BYTE)*p++;
  if (!dbc_2nd(b)) return 0xFFFFFFFF;
  wc = (wc << 8) + b;
 }
 if (wc != 0) {
  wc = ff_oem2uni(wc, CODEPAGE);
  if (wc == 0) return 0xFFFFFFFF;
 }
 uc = wc;


 *str = p;
 return uc;
}
