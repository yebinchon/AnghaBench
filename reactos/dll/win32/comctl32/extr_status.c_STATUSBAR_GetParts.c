
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {size_t numParts; TYPE_1__* parts; } ;
struct TYPE_4__ {size_t x; } ;
typedef TYPE_2__ STATUS_INFO ;
typedef size_t INT ;


 int TRACE (char*,size_t) ;

__attribute__((used)) static INT
STATUSBAR_GetParts (const STATUS_INFO *infoPtr, INT num_parts, INT parts[])
{
    INT i;

    TRACE("(%d)\n", num_parts);
    if (parts) {
 for (i = 0; i < num_parts; i++) {
     parts[i] = infoPtr->parts[i].x;
 }
    }
    return infoPtr->numParts;
}
