
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPSTR ;
typedef scalar_t__ LPCSTR ;
typedef int BOOL ;


 int FALSE ;
 int kull_m_string_copyA_len (int *,scalar_t__,size_t) ;
 size_t strlen (scalar_t__) ;

BOOL kull_m_string_copyA(LPSTR *dst, LPCSTR src)
{
 BOOL status = FALSE;
 size_t size;
 if(src && dst && (size = strlen(src)))
  status = kull_m_string_copyA_len(dst, src, size);
 return status;
}
