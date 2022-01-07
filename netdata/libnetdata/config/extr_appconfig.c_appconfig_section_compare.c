
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct section {scalar_t__ hash; int name; } ;


 int strcmp (int ,int ) ;

int appconfig_section_compare(void *a, void *b) {
    if(((struct section *)a)->hash < ((struct section *)b)->hash) return -1;
    else if(((struct section *)a)->hash > ((struct section *)b)->hash) return 1;
    else return strcmp(((struct section *)a)->name, ((struct section *)b)->name);
}
