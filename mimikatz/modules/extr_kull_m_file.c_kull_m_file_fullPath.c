
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int * PWCHAR ;
typedef scalar_t__ PCWCHAR ;
typedef int DWORD ;


 int ExpandEnvironmentStrings (scalar_t__,int *,int) ;
 int LPTR ;
 scalar_t__ LocalAlloc (int ,int) ;
 scalar_t__ LocalFree (int *) ;

PWCHAR kull_m_file_fullPath(PCWCHAR fileName)
{
 PWCHAR buffer = ((void*)0);
 DWORD bufferLen;
 if(fileName)
  if(bufferLen = ExpandEnvironmentStrings(fileName, ((void*)0), 0))
   if(buffer = (PWCHAR) LocalAlloc(LPTR, bufferLen * sizeof(wchar_t)))
    if(bufferLen != ExpandEnvironmentStrings(fileName, buffer, bufferLen))
     buffer = (PWCHAR) LocalFree(buffer);
 return buffer;
}
