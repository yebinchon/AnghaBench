
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct variable2json_helper {scalar_t__ counter; int options; int * buf; } ;
struct TYPE_7__ {int rrdvar_root_index; int hostname; } ;
struct TYPE_6__ {TYPE_1__* rrdfamily; int family; int rrdvar_root_index; int context; int name; int id; TYPE_3__* rrdhost; } ;
struct TYPE_5__ {int rrdvar_root_index; } ;
typedef TYPE_2__ RRDSET ;
typedef TYPE_3__ RRDHOST ;
typedef int BUFFER ;


 int RRDVAR_OPTION_DEFAULT ;
 int avl_traverse_lock (int *,int ,void*) ;
 int buffer_sprintf (int *,char*,int ,...) ;
 int buffer_strcat (int *,char*) ;
 int single_variable2json ;

void health_api_v1_chart_variables2json(RRDSET *st, BUFFER *buf) {
    RRDHOST *host = st->rrdhost;

    struct variable2json_helper helper = {
            .buf = buf,
            .counter = 0,
            .options = RRDVAR_OPTION_DEFAULT
    };

    buffer_sprintf(buf, "{\n\t\"chart\": \"%s\",\n\t\"chart_name\": \"%s\",\n\t\"chart_context\": \"%s\",\n\t\"chart_variables\": {", st->id, st->name, st->context);
    avl_traverse_lock(&st->rrdvar_root_index, single_variable2json, (void *)&helper);
    buffer_sprintf(buf, "\n\t},\n\t\"family\": \"%s\",\n\t\"family_variables\": {", st->family);
    helper.counter = 0;
    avl_traverse_lock(&st->rrdfamily->rrdvar_root_index, single_variable2json, (void *)&helper);
    buffer_sprintf(buf, "\n\t},\n\t\"host\": \"%s\",\n\t\"host_variables\": {", host->hostname);
    helper.counter = 0;
    avl_traverse_lock(&host->rrdvar_root_index, single_variable2json, (void *)&helper);
    buffer_strcat(buf, "\n\t}\n}\n");
}
