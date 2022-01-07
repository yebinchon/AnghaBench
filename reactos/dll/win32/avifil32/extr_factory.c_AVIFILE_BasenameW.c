
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* LPCWSTR ;


 int SLASH (char) ;
 int lstrlenW (char*) ;

LPCWSTR AVIFILE_BasenameW(LPCWSTR szPath)
{


  LPCWSTR szCur;

  for (szCur = szPath + lstrlenW(szPath);
       szCur > szPath && !((*szCur) == '/' || (*szCur) == '\\') && *szCur != ':';)
    szCur--;

  if (szCur == szPath)
    return szCur;
  else
    return szCur + 1;


}
