
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int LastWriteTime; int encoding; int * filename; int * section; int changed; } ;


 TYPE_1__* CurProfile ;
 int ENCODING_ANSI ;
 int FALSE ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,int *) ;
 int PROFILE_FlushFile () ;
 int PROFILE_Free (int *) ;
 int ZeroMemory (int *,int) ;

__attribute__((used)) static void PROFILE_ReleaseFile(void)
{
    PROFILE_FlushFile();
    PROFILE_Free( CurProfile->section );
    HeapFree( GetProcessHeap(), 0, CurProfile->filename );
    CurProfile->changed = FALSE;
    CurProfile->section = ((void*)0);
    CurProfile->filename = ((void*)0);
    CurProfile->encoding = ENCODING_ANSI;
    ZeroMemory(&CurProfile->LastWriteTime, sizeof(CurProfile->LastWriteTime));
}
