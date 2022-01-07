
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ hash_family; int family; } ;
typedef TYPE_1__ RRDFAMILY ;


 int strcmp (int ,int ) ;

int rrdfamily_compare(void *a, void *b) {
    if(((RRDFAMILY *)a)->hash_family < ((RRDFAMILY *)b)->hash_family) return -1;
    else if(((RRDFAMILY *)a)->hash_family > ((RRDFAMILY *)b)->hash_family) return 1;
    else return strcmp(((RRDFAMILY *)a)->family, ((RRDFAMILY *)b)->family);
}
