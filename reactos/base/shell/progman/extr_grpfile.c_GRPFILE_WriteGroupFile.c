
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int hMainWnd; } ;
struct TYPE_8__ {struct TYPE_8__* hGrpFile; int bOverwriteFileOk; int bFileNameModified; } ;
typedef TYPE_1__ PROGGROUP ;
typedef int OFSTRUCT ;
typedef scalar_t__ HFILE ;
typedef int CHAR ;
typedef int BOOL ;


 int FALSE ;
 int GRPFILE_DoWriteGroupFile (scalar_t__,TYPE_1__*) ;
 int GRPFILE_ModifyFileName (int *,TYPE_1__*,int,int ) ;
 TYPE_4__ Globals ;
 scalar_t__ HFILE_ERROR ;
 scalar_t__ IDCANCEL ;
 scalar_t__ IDOK ;
 int IDS_ERROR ;
 int IDS_FILE_NOT_OVERWRITTEN_s ;
 int IDS_FILE_WRITE_ERROR_s ;
 int IDS_INFO ;
 int IDS_SAVE_GROUP_AS_s ;
 TYPE_1__* LocalLock (TYPE_1__*) ;
 scalar_t__ MAIN_MessageBoxIDS_s (int ,int *,int ,int) ;
 int MAX_PATHNAME_LEN ;
 int MB_DEFBUTTON2 ;
 int MB_ICONINFORMATION ;
 int MB_OK ;
 int MB_OKCANCEL ;
 scalar_t__ MessageBoxA (int ,int *,char*,int) ;
 int OF_EXIST ;
 scalar_t__ OpenFile (int *,int *,int ) ;
 int TRUE ;
 int _lclose (scalar_t__) ;
 scalar_t__ _lcreat (int *,int ) ;
 int wsprintfA (int *,char*,int *) ;

BOOL GRPFILE_WriteGroupFile(PROGGROUP* hGroup)
{
    return TRUE;

}
