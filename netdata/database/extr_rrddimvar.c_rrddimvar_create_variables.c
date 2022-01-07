
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {int name; int id; TYPE_2__* rrdset; } ;
struct TYPE_11__ {int value; int type; void* key_fullnamename; void* var_host_chartnamename; void* key_fullnameid; void* var_host_chartnameid; void* key_fullidname; void* var_host_chartidname; void* key_fullidid; void* var_host_chartidid; void* key_contextname; void* var_family_contextname; void* key_contextid; void* var_family_contextid; void* key_name; void* var_family_name; void* key_id; void* var_family_id; void* var_local_name; void* var_local_id; int suffix; int prefix; TYPE_5__* rrddim; } ;
struct TYPE_10__ {int rrdvar_root_index; } ;
struct TYPE_9__ {TYPE_1__* rrdfamily; int rrdvar_root_index; int name; int context; int id; TYPE_3__* rrdhost; } ;
struct TYPE_8__ {int rrdvar_root_index; } ;
typedef TYPE_2__ RRDSET ;
typedef TYPE_3__ RRDHOST ;
typedef TYPE_4__ RRDDIMVAR ;
typedef TYPE_5__ RRDDIM ;


 int RRDDIMVAR_ID_MAX ;
 int RRDVAR_OPTION_DEFAULT ;
 int rrddimvar_free_variables (TYPE_4__*) ;
 void* rrdvar_create_and_index (char*,int *,void*,int ,int ,int ) ;
 int snprintfz (char*,int ,char*,int ,void*,...) ;
 void* strdupz (char*) ;

__attribute__((used)) static inline void rrddimvar_create_variables(RRDDIMVAR *rs) {
    rrddimvar_free_variables(rs);

    RRDDIM *rd = rs->rrddim;
    RRDSET *st = rd->rrdset;
    RRDHOST *host = st->rrdhost;

    char buffer[RRDDIMVAR_ID_MAX + 1];



    snprintfz(buffer, RRDDIMVAR_ID_MAX, "%s%s%s", rs->prefix, rd->id, rs->suffix);
    rs->key_id = strdupz(buffer);

    snprintfz(buffer, RRDDIMVAR_ID_MAX, "%s%s%s", rs->prefix, rd->name, rs->suffix);
    rs->key_name = strdupz(buffer);

    snprintfz(buffer, RRDDIMVAR_ID_MAX, "%s.%s", st->id, rs->key_id);
    rs->key_fullidid = strdupz(buffer);

    snprintfz(buffer, RRDDIMVAR_ID_MAX, "%s.%s", st->id, rs->key_name);
    rs->key_fullidname = strdupz(buffer);

    snprintfz(buffer, RRDDIMVAR_ID_MAX, "%s.%s", st->context, rs->key_id);
    rs->key_contextid = strdupz(buffer);

    snprintfz(buffer, RRDDIMVAR_ID_MAX, "%s.%s", st->context, rs->key_name);
    rs->key_contextname = strdupz(buffer);

    snprintfz(buffer, RRDDIMVAR_ID_MAX, "%s.%s", st->name, rs->key_id);
    rs->key_fullnameid = strdupz(buffer);

    snprintfz(buffer, RRDDIMVAR_ID_MAX, "%s.%s", st->name, rs->key_name);
    rs->key_fullnamename = strdupz(buffer);
    rs->var_local_id = rrdvar_create_and_index("local", &st->rrdvar_root_index, rs->key_id, rs->type, RRDVAR_OPTION_DEFAULT, rs->value);
    rs->var_local_name = rrdvar_create_and_index("local", &st->rrdvar_root_index, rs->key_name, rs->type, RRDVAR_OPTION_DEFAULT, rs->value);
    rs->var_family_id = rrdvar_create_and_index("family", &st->rrdfamily->rrdvar_root_index, rs->key_id, rs->type, RRDVAR_OPTION_DEFAULT, rs->value);
    rs->var_family_name = rrdvar_create_and_index("family", &st->rrdfamily->rrdvar_root_index, rs->key_name, rs->type, RRDVAR_OPTION_DEFAULT, rs->value);
    rs->var_family_contextid = rrdvar_create_and_index("family", &st->rrdfamily->rrdvar_root_index, rs->key_contextid, rs->type, RRDVAR_OPTION_DEFAULT, rs->value);
    rs->var_family_contextname = rrdvar_create_and_index("family", &st->rrdfamily->rrdvar_root_index, rs->key_contextname, rs->type, RRDVAR_OPTION_DEFAULT, rs->value);
    rs->var_host_chartidid = rrdvar_create_and_index("host", &host->rrdvar_root_index, rs->key_fullidid, rs->type, RRDVAR_OPTION_DEFAULT, rs->value);
    rs->var_host_chartidname = rrdvar_create_and_index("host", &host->rrdvar_root_index, rs->key_fullidname, rs->type, RRDVAR_OPTION_DEFAULT, rs->value);
    rs->var_host_chartnameid = rrdvar_create_and_index("host", &host->rrdvar_root_index, rs->key_fullnameid, rs->type, RRDVAR_OPTION_DEFAULT, rs->value);
    rs->var_host_chartnamename = rrdvar_create_and_index("host", &host->rrdvar_root_index, rs->key_fullnamename, rs->type, RRDVAR_OPTION_DEFAULT, rs->value);
}
