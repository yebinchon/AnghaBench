
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rrdvar_root_index; } ;
typedef int RRDVAR ;
typedef TYPE_1__ RRDHOST ;


 int * rrdvar_custom_variable_create (char*,int *,char const*) ;

RRDVAR *rrdvar_custom_host_variable_create(RRDHOST *host, const char *name) {
    return rrdvar_custom_variable_create("host", &host->rrdvar_root_index, name);
}
