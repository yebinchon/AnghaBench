
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * log_fp; } ;


 int fclose (int *) ;
 TYPE_1__ registry ;

void registry_log_close(void) {
    if(registry.log_fp) {
        fclose(registry.log_fp);
        registry.log_fp = ((void*)0);
    }
}
