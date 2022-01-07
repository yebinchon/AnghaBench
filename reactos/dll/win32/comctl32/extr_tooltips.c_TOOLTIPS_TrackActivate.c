
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int nTrackTool; int bTrackActive; } ;
struct TYPE_8__ {scalar_t__ cbSize; } ;
typedef int TTTOOLINFOW ;
typedef TYPE_1__ TTTOOLINFOA ;
typedef TYPE_2__ TOOLTIPS_INFO ;
typedef int LRESULT ;
typedef scalar_t__ BOOL ;


 int FALSE ;
 int TOOLTIPS_GetToolFromInfoT (TYPE_2__*,int const*) ;
 int TOOLTIPS_TrackHide (TYPE_2__*) ;
 int TOOLTIPS_TrackShow (TYPE_2__*) ;
 int TRACE (char*) ;
 int TRUE ;
 scalar_t__ TTTOOLINFOA_V1_SIZE ;

__attribute__((used)) static LRESULT
TOOLTIPS_TrackActivate (TOOLTIPS_INFO *infoPtr, BOOL track_activate, const TTTOOLINFOA *ti)
{
    if (track_activate) {

 if (!ti) return 0;
 if (ti->cbSize < TTTOOLINFOA_V1_SIZE)
     return FALSE;


 infoPtr->nTrackTool = TOOLTIPS_GetToolFromInfoT (infoPtr, (const TTTOOLINFOW*)ti);
 if (infoPtr->nTrackTool != -1) {
     TRACE("activated\n");
     infoPtr->bTrackActive = TRUE;
     TOOLTIPS_TrackShow (infoPtr);
 }
    }
    else {

 TOOLTIPS_TrackHide (infoPtr);

 infoPtr->bTrackActive = FALSE;
 infoPtr->nTrackTool = -1;

        TRACE("deactivated\n");
    }

    return 0;
}
