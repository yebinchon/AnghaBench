
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int className; } ;


 unsigned int NUM_SUBCLASSES ;
 int UnregisterClassW (int ,int *) ;
 int atSubclassProp ;
 TYPE_1__* subclasses ;

void THEMING_Uninitialize (void)
{
    unsigned int i;

    if (!atSubclassProp) return;

    for (i = 0; i < NUM_SUBCLASSES; i++)
    {
        UnregisterClassW (subclasses[i].className, ((void*)0));
    }
}
