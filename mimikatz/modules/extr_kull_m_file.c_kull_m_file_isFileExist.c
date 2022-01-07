
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PCWCHAR ;
typedef scalar_t__ HANDLE ;
typedef int BOOL ;


 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFile (int ,int ,int ,int *,int ,int ,int *) ;
 int FALSE ;
 int FILE_SHARE_READ ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int OPEN_EXISTING ;

BOOL kull_m_file_isFileExist(PCWCHAR fileName)
{
 BOOL reussite = FALSE;
 HANDLE hFile = ((void*)0);

 reussite = ((hFile = CreateFile(fileName, 0, FILE_SHARE_READ, ((void*)0), OPEN_EXISTING, 0, ((void*)0))) && hFile != INVALID_HANDLE_VALUE);
 if(reussite)
  CloseHandle(hFile);
 return reussite;
}
