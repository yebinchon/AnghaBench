
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * installfunc; int * changefunc; scalar_t__ active; } ;


 size_t choice_count ;
 TYPE_1__* choices ;

__attribute__((used)) static void
add_dummy_choice(void)
{
    choices[choice_count].installfunc = ((void*)0);
    choices[choice_count].active = 0;
    choices[choice_count].changefunc = ((void*)0);
    choices[choice_count].installfunc = ((void*)0);
    ++choice_count;
}
