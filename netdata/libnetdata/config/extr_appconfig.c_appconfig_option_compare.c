
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_option {scalar_t__ hash; int name; } ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int appconfig_option_compare(void *a, void *b) {
    if(((struct config_option *)a)->hash < ((struct config_option *)b)->hash) return -1;
    else if(((struct config_option *)a)->hash > ((struct config_option *)b)->hash) return 1;
    else return strcmp(((struct config_option *)a)->name, ((struct config_option *)b)->name);
}
