
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ fActive; int control; } ;
typedef TYPE_1__ IOCS ;
typedef int BOOL ;


 scalar_t__ TRUE ;

__attribute__((used)) static void IOCS_OnShow( IOCS *This, BOOL fShow )
{
    if (!This->control || This->fActive || !fShow )
        return;

    This->fActive = TRUE;
}
