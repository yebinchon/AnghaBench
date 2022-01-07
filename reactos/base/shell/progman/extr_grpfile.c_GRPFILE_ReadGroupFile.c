
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OFSTRUCT ;
typedef int * LPCWSTR ;
typedef int INT ;
typedef int HLOCAL ;
typedef int DWORD ;
typedef int CHAR ;
typedef int BOOL ;


 int ERROR_SUCCESS ;
 int FALSE ;
 int GRPFILE_ModifyFileName (int *,int *,int,int ) ;
 int GRPFILE_ReadFileToBuffer (int *,int *,int *) ;
 int GRPFILE_ScanGroup (int ,int ,int *,int ) ;
 scalar_t__ HFILE_ERROR ;
 int IDS_ERROR ;
 int IDS_GRPFILE_READ_ERROR_s ;
 int LocalFree (int ) ;
 int LocalLock (int ) ;
 int MAIN_MessageBoxIDS_s (int ,int *,int ,int ) ;
 int MAX_PATHNAME_LEN ;
 int MB_YESNO ;
 int OF_EXIST ;
 scalar_t__ OpenFile (int *,int *,int ) ;
 int TRUE ;

DWORD GRPFILE_ReadGroupFile(LPCWSTR lpszPath, BOOL bIsCommonGroup)
{
    return ERROR_SUCCESS;

}
