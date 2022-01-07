
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int char_u ;
typedef int WCHAR ;
typedef int HANDLE ;


 int CREATE_NEW ;
 int CloseHandle (int ) ;
 int CreateFile (char const*,int ,int ,int *,int ,int ,int *) ;
 int DeleteFile (char const*) ;
 scalar_t__ ERROR_CALL_NOT_IMPLEMENTED ;
 int FILE_ATTRIBUTE_NORMAL ;
 int GENERIC_WRITE ;
 scalar_t__ GetACP () ;
 scalar_t__ GetFullPathName (char const*,int ,char*,char**) ;
 scalar_t__ GetLastError () ;
 scalar_t__ GetTempFileName (char*,char*,int ,char*) ;
 int INVALID_HANDLE_VALUE ;
 int MoveFile (char const*,char const*) ;
 char NUL ;
 int STRLEN (char*) ;
 int _MAX_PATH ;
 int enc_codepage ;
 int * enc_to_utf16 (int *,int *) ;
 scalar_t__ gettail (int *) ;
 int mch_windows95 () ;
 int mch_wrename (int *,int *) ;
 int rename (char const*,char const*) ;
 int vim_free (int *) ;

int
mch_rename(
    const char *pszOldFile,
    const char *pszNewFile)
{
    char szTempFile[_MAX_PATH+1];
    char szNewPath[_MAX_PATH+1];
    char *pszFilePart;
    HANDLE hf;
    if (!mch_windows95())
    {
 pszFilePart = (char *)gettail((char_u *)pszOldFile);
 if (STRLEN(pszFilePart) < 8 || pszFilePart[6] != '~')
     return rename(pszOldFile, pszNewFile);
    }



    if (GetFullPathName(pszNewFile, _MAX_PATH, szNewPath, &pszFilePart) == 0
     || pszFilePart == ((void*)0))
 return -1;
    *pszFilePart = NUL;


    if (GetTempFileName(szNewPath, "VIM", 0, szTempFile) == 0)
 return -2;


    if (!DeleteFile(szTempFile))
 return -3;


    if (!MoveFile(pszOldFile, szTempFile))
 return -4;
    if ((hf = CreateFile(pszOldFile, GENERIC_WRITE, 0, ((void*)0), CREATE_NEW,
      FILE_ATTRIBUTE_NORMAL, ((void*)0))) == INVALID_HANDLE_VALUE)
 return -5;
    if (!CloseHandle(hf))
 return -6;


    if (!MoveFile(szTempFile, pszNewFile))
    {


 (void)MoveFile(szTempFile, pszOldFile);

 return -7;
    }


    DeleteFile(szTempFile);


    if (!DeleteFile(pszOldFile))
 return -8;

    return 0;
}
