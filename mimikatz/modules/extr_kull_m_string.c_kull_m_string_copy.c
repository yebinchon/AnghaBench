
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPWSTR ;
typedef scalar_t__ LPCWSTR ;
typedef int BOOL ;


 int FALSE ;
 int kull_m_string_copy_len (int *,scalar_t__,size_t) ;
 size_t wcslen (scalar_t__) ;

BOOL kull_m_string_copy(LPWSTR *dst, LPCWSTR src)
{
 BOOL status = FALSE;
 size_t size;
 if(src && dst && (size = wcslen(src)))
  status = kull_m_string_copy_len(dst, src, size);
 return status;
}
