
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct variable2json_helper {int options; int counter; int * buf; } ;
struct TYPE_3__ {int rrdvar_root_index; } ;
typedef TYPE_1__ RRDSET ;
typedef int BUFFER ;


 int RRDVAR_OPTION_CUSTOM_CHART_VAR ;
 int avl_traverse_lock (int *,int ,void*) ;
 int buffer_sprintf (int *,char*) ;
 int buffer_strcat (int *,char*) ;
 int single_variable2json ;

void health_api_v1_chart_custom_variables2json(RRDSET *st, BUFFER *buf) {
    struct variable2json_helper helper = {
            .buf = buf,
            .counter = 0,
            .options = RRDVAR_OPTION_CUSTOM_CHART_VAR
    };

    buffer_sprintf(buf, "{");
    avl_traverse_lock(&st->rrdvar_root_index, single_variable2json, (void *)&helper);
    buffer_strcat(buf, "\n\t\t\t}");
}
