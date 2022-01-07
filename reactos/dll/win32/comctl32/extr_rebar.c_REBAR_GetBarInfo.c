
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int cbSize; int fMask; scalar_t__ himl; } ;
struct TYPE_5__ {scalar_t__ himl; } ;
typedef TYPE_1__ REBAR_INFO ;
typedef int REBARINFO ;
typedef int LRESULT ;
typedef TYPE_2__* LPREBARINFO ;


 int FALSE ;
 int RBIM_IMAGELIST ;
 int TRACE (char*) ;
 int TRUE ;

__attribute__((used)) static LRESULT
REBAR_GetBarInfo (const REBAR_INFO *infoPtr, LPREBARINFO lpInfo)
{
    if (!lpInfo || lpInfo->cbSize < sizeof (REBARINFO))
 return FALSE;

    TRACE("getting bar info!\n");

    if (infoPtr->himl) {
 lpInfo->himl = infoPtr->himl;
 lpInfo->fMask |= RBIM_IMAGELIST;
    }

    return TRUE;
}
