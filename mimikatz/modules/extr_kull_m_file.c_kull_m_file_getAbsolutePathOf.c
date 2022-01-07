
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int PCWCHAR ;
typedef int BOOL ;


 int FALSE ;
 int LPTR ;
 scalar_t__ LocalAlloc (int ,int) ;
 int LocalFree (int *) ;
 int MAX_PATH ;
 int PathCanonicalize (int *,int ) ;
 int * PathCombine (int *,int *,int ) ;
 scalar_t__ PathIsRelative (int ) ;
 scalar_t__ kull_m_file_getCurrentDirectory (int **) ;

BOOL kull_m_file_getAbsolutePathOf(PCWCHAR thisData, wchar_t ** reponse)
{
 BOOL reussite = FALSE;
 wchar_t *monRep;
 *reponse = (wchar_t *) LocalAlloc(LPTR, MAX_PATH * sizeof(wchar_t));

 if(PathIsRelative(thisData))
 {
  if(kull_m_file_getCurrentDirectory(&monRep))
  {
   reussite = (PathCombine(*reponse , monRep, thisData) != ((void*)0));
   LocalFree(monRep);
  }
 }
 else reussite = PathCanonicalize(*reponse, thisData);

 if(!reussite)
  LocalFree(*reponse);

 return reussite;
}
