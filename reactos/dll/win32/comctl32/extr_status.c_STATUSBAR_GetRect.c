
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int bound; } ;
struct TYPE_7__ {size_t numParts; TYPE_2__* parts; TYPE_1__ part0; scalar_t__ simple; } ;
struct TYPE_6__ {int bound; } ;
typedef TYPE_3__ STATUS_INFO ;
typedef int * LPRECT ;
typedef size_t INT ;
typedef int BOOL ;


 int FALSE ;
 int TRACE (char*,size_t) ;
 int TRUE ;

__attribute__((used)) static BOOL
STATUSBAR_GetRect (const STATUS_INFO *infoPtr, INT nPart, LPRECT rect)
{
    TRACE("part %d\n", nPart);
    if(nPart >= infoPtr->numParts || nPart < 0)
      return FALSE;
    if (infoPtr->simple)
 *rect = infoPtr->part0.bound;
    else
 *rect = infoPtr->parts[nPart].bound;
    return TRUE;
}
