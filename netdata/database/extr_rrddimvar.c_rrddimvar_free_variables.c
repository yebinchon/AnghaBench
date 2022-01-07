
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {TYPE_2__* rrdset; } ;
struct TYPE_11__ {int * key_fullnamename; int * key_fullnameid; int * key_contextname; int * key_contextid; int * key_fullidname; int * key_fullidid; int * key_name; int * key_id; int * var_host_chartnamename; int * var_host_chartnameid; int * var_host_chartidname; int * var_host_chartidid; int * var_family_contextname; int * var_family_contextid; int * var_family_name; int * var_family_id; int * var_local_name; int * var_local_id; TYPE_5__* rrddim; } ;
struct TYPE_10__ {int rrdvar_root_index; } ;
struct TYPE_9__ {TYPE_1__* rrdfamily; int rrdvar_root_index; TYPE_3__* rrdhost; } ;
struct TYPE_8__ {int rrdvar_root_index; } ;
typedef TYPE_2__ RRDSET ;
typedef TYPE_3__ RRDHOST ;
typedef TYPE_4__ RRDDIMVAR ;
typedef TYPE_5__ RRDDIM ;


 int freez (int *) ;
 int rrdvar_free (TYPE_3__*,int *,int *) ;

__attribute__((used)) static inline void rrddimvar_free_variables(RRDDIMVAR *rs) {
    RRDDIM *rd = rs->rrddim;
    RRDSET *st = rd->rrdset;
    RRDHOST *host = st->rrdhost;



    rrdvar_free(host, &st->rrdvar_root_index, rs->var_local_id);
    rs->var_local_id = ((void*)0);

    rrdvar_free(host, &st->rrdvar_root_index, rs->var_local_name);
    rs->var_local_name = ((void*)0);



    rrdvar_free(host, &st->rrdfamily->rrdvar_root_index, rs->var_family_id);
    rs->var_family_id = ((void*)0);

    rrdvar_free(host, &st->rrdfamily->rrdvar_root_index, rs->var_family_name);
    rs->var_family_name = ((void*)0);

    rrdvar_free(host, &st->rrdfamily->rrdvar_root_index, rs->var_family_contextid);
    rs->var_family_contextid = ((void*)0);

    rrdvar_free(host, &st->rrdfamily->rrdvar_root_index, rs->var_family_contextname);
    rs->var_family_contextname = ((void*)0);



    rrdvar_free(host, &host->rrdvar_root_index, rs->var_host_chartidid);
    rs->var_host_chartidid = ((void*)0);

    rrdvar_free(host, &host->rrdvar_root_index, rs->var_host_chartidname);
    rs->var_host_chartidname = ((void*)0);

    rrdvar_free(host, &host->rrdvar_root_index, rs->var_host_chartnameid);
    rs->var_host_chartnameid = ((void*)0);

    rrdvar_free(host, &host->rrdvar_root_index, rs->var_host_chartnamename);
    rs->var_host_chartnamename = ((void*)0);



    freez(rs->key_id);
    rs->key_id = ((void*)0);

    freez(rs->key_name);
    rs->key_name = ((void*)0);

    freez(rs->key_fullidid);
    rs->key_fullidid = ((void*)0);

    freez(rs->key_fullidname);
    rs->key_fullidname = ((void*)0);

    freez(rs->key_contextid);
    rs->key_contextid = ((void*)0);

    freez(rs->key_contextname);
    rs->key_contextname = ((void*)0);

    freez(rs->key_fullnameid);
    rs->key_fullnameid = ((void*)0);

    freez(rs->key_fullnamename);
    rs->key_fullnamename = ((void*)0);
}
