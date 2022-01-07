
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int DWORD ;
typedef int BOOL ;


 int FALSE ;
 int GetCurrentDirectory (int,int *) ;
 int LPTR ;
 scalar_t__ LocalAlloc (int ,int) ;
 int LocalFree (int *) ;

BOOL kull_m_file_getCurrentDirectory(wchar_t ** ppDirName)
{
 BOOL reussite = FALSE;
 DWORD tailleRequise = GetCurrentDirectory(0, ((void*)0));
 if(*ppDirName = (wchar_t *) LocalAlloc(LPTR, tailleRequise * sizeof(wchar_t)))
  if(!(reussite = (tailleRequise > 0 && (GetCurrentDirectory(tailleRequise, *ppDirName) == tailleRequise - 1))))
   LocalFree(*ppDirName);

 return reussite;
}
