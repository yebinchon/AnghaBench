
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc_device {scalar_t__ hash; int id; } ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int tc_device_compare(void* a, void* b) {
    if(((struct tc_device *)a)->hash < ((struct tc_device *)b)->hash) return -1;
    else if(((struct tc_device *)a)->hash > ((struct tc_device *)b)->hash) return 1;
    else return strcmp(((struct tc_device *)a)->id, ((struct tc_device *)b)->id);
}
