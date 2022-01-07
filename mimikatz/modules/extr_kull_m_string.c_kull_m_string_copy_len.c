
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef scalar_t__ LPWSTR ;
typedef scalar_t__ LPCWSTR ;
typedef int BOOL ;


 int FALSE ;
 int LPTR ;
 scalar_t__ LocalAlloc (int ,size_t) ;
 int RtlCopyMemory (scalar_t__,scalar_t__,size_t) ;
 int TRUE ;

BOOL kull_m_string_copy_len(LPWSTR *dst, LPCWSTR src, size_t size)
{
 BOOL status = FALSE;
 if(src && dst && size)
 {
  size = (size + 1) * sizeof(wchar_t);
  if(*dst = (LPWSTR) LocalAlloc(LPTR, size))
  {
   RtlCopyMemory(*dst, src, size);
   status = TRUE;
  }
 }
 return status;
}
