
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ uid; } ;
struct user_or_group_id {TYPE_1__ id; } ;



int user_id_compare(void* a, void* b) {
    if(((struct user_or_group_id *)a)->id.uid < ((struct user_or_group_id *)b)->id.uid)
        return -1;

    else if(((struct user_or_group_id *)a)->id.uid > ((struct user_or_group_id *)b)->id.uid)
        return 1;

    else
        return 0;
}
