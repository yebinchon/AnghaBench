
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * log_fp; int log_filename; } ;


 int error (char*,int ) ;
 int fclose (int *) ;
 int * fopen (int ,char*) ;
 TYPE_1__ registry ;
 int registry_log_close () ;
 int registry_log_open () ;

void registry_log_recreate(void) {
    if(registry.log_fp != ((void*)0)) {
        registry_log_close();


        registry.log_fp = fopen(registry.log_filename, "w");
        if(registry.log_fp) fclose(registry.log_fp);
        else error("Cannot truncate registry log '%s'", registry.log_filename);

        registry.log_fp = ((void*)0);
        registry_log_open();
    }
}
