
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int hIcon; } ;
struct TYPE_7__ {int numParts; TYPE_2__* parts; TYPE_1__ part0; } ;
struct TYPE_6__ {int hIcon; } ;
typedef TYPE_3__ STATUS_INFO ;
typedef int INT ;
typedef int HICON ;


 int TRACE (char*,int) ;

__attribute__((used)) static HICON
STATUSBAR_GetIcon (const STATUS_INFO *infoPtr, INT nPart)
{
    TRACE("%d\n", nPart);

    if ((nPart < -1) || (nPart >= infoPtr->numParts))
 return 0;

    if (nPart == -1)
        return (infoPtr->part0.hIcon);
    else
        return (infoPtr->parts[nPart].hIcon);
}
