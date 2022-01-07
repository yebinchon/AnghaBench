
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int log_filename; scalar_t__ log_fp; } ;


 int _IOLBF ;
 int error (char*,...) ;
 int fclose (scalar_t__) ;
 scalar_t__ fopen (int ,char*) ;
 TYPE_1__ registry ;
 scalar_t__ setvbuf (scalar_t__,int *,int ,int ) ;

int registry_log_open(void) {
    if(registry.log_fp)
        fclose(registry.log_fp);

    registry.log_fp = fopen(registry.log_filename, "a");
    if(registry.log_fp) {
        if (setvbuf(registry.log_fp, ((void*)0), _IOLBF, 0) != 0)
            error("Cannot set line buffering on registry log file.");
        return 0;
    }

    error("Cannot open registry log file '%s'. Registry data will be lost in case of netdata or server crash.", registry.log_filename);
    return -1;
}
