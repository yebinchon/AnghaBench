
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int iString; scalar_t__ dwData; int fsStyle; int fsState; int iBitmap; int idCommand; } ;
typedef TYPE_1__ TBBUTTON ;
typedef int LPWSTR ;
typedef int LPSTR ;
typedef scalar_t__ BOOL ;


 int TRACE (char*,int ,int ,int ,int ,void*,void*,char*) ;
 char* debugstr_a (int ) ;
 char* debugstr_w (int ) ;

__attribute__((used)) static void
TOOLBAR_DumpTBButton(const TBBUTTON *tbb, BOOL fUnicode)
{
    TRACE("TBBUTTON: id %d, bitmap=%d, state=%02x, style=%02x, data=%p, stringid=%p (%s)\n", tbb->idCommand,
        tbb->iBitmap, tbb->fsState, tbb->fsStyle, (void *)tbb->dwData, (void *)tbb->iString,
        tbb->iString != -1 ? (fUnicode ? debugstr_w((LPWSTR)tbb->iString) : debugstr_a((LPSTR)tbb->iString)) : "");
}
