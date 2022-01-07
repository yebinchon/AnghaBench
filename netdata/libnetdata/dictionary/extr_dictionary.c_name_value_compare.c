
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ hash; int name; } ;
typedef TYPE_1__ NAME_VALUE ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int name_value_compare(void* a, void* b) {
    if(((NAME_VALUE *)a)->hash < ((NAME_VALUE *)b)->hash) return -1;
    else if(((NAME_VALUE *)a)->hash > ((NAME_VALUE *)b)->hash) return 1;
    else return strcmp(((NAME_VALUE *)a)->name, ((NAME_VALUE *)b)->name);
}
