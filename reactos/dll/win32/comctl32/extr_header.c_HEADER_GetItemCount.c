
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int uNumItem; } ;
typedef int LRESULT ;
typedef TYPE_1__ HEADER_INFO ;



__attribute__((used)) static inline LRESULT
HEADER_GetItemCount (const HEADER_INFO *infoPtr)
{
    return infoPtr->uNumItem;
}
