
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ WCHAR ;
typedef int UINT ;
typedef void* TCHAR ;
typedef int DWORD ;
typedef int BYTE ;


 int CODEPAGE ;
 scalar_t__ IsSurrogate (int) ;
 int IsSurrogateH (scalar_t__) ;
 int IsSurrogateL (scalar_t__) ;
 scalar_t__ ff_uni2oem (int,int ) ;

__attribute__((used)) static BYTE put_utf (
 DWORD chr,
 TCHAR* buf,
 UINT szb
)
{
 WCHAR wc;

 wc = ff_uni2oem(chr, CODEPAGE);
 if (wc >= 0x100) {
  if (szb < 2) return 0;
  *buf++ = (char)(wc >> 8);
  *buf++ = (TCHAR)wc;
  return 2;
 }
 if (wc == 0 || szb < 1) return 0;
 *buf++ = (TCHAR)wc;
 return 1;

}
