
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ WORD ;
typedef int UINT ;
struct TYPE_6__ {scalar_t__ CmdId; int HintId; } ;
struct TYPE_5__ {int hStatus; } ;
typedef TYPE_1__* PMAIN_WND_INFO ;
typedef TYPE_2__ MENU_HINT ;
typedef int DWORD ;
typedef int BOOL ;


 int FALSE ;
 int SB_SIMPLEID ;
 int StatusBarLoadString (int ,int ,int ,int ) ;
 int TRUE ;
 int hInstance ;

__attribute__((used)) static BOOL
MainWndMenuHint(PMAIN_WND_INFO Info,
                WORD CmdId,
                const MENU_HINT *HintArray,
                DWORD HintsCount,
                UINT DefHintId)
{
    BOOL Found = FALSE;
    const MENU_HINT *LastHint;
    UINT HintId = DefHintId;

    LastHint = HintArray + HintsCount;
    while (HintArray != LastHint)
    {
        if (HintArray->CmdId == CmdId)
        {
            HintId = HintArray->HintId;
            Found = TRUE;
            break;
        }
        HintArray++;
    }

    StatusBarLoadString(Info->hStatus,
                        SB_SIMPLEID,
                        hInstance,
                        HintId);

    return Found;
}
