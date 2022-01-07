
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int CP_ACP ;
 int LPTR ;
 scalar_t__ LocalAlloc (int ,int) ;
 scalar_t__ LocalFree (char*) ;
 int WC_COMPOSITECHECK ;
 int WideCharToMultiByte (int ,int ,int const*,int,char*,int,int *,int *) ;

char * kull_m_string_unicode_to_ansi(const wchar_t * unicode)
{
 int needed;
 char * buffer = ((void*)0);
 if(needed = WideCharToMultiByte(CP_ACP, WC_COMPOSITECHECK, unicode, -1, ((void*)0), 0, ((void*)0), ((void*)0)))
  if(buffer = (char *) LocalAlloc(LPTR, needed))
   if(needed != WideCharToMultiByte(CP_ACP, WC_COMPOSITECHECK, unicode, -1, buffer, needed, ((void*)0), ((void*)0)))
    buffer = (char *) LocalFree(buffer);
 return buffer;
}
