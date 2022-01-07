
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int rrdvar_root_index; } ;
struct TYPE_9__ {TYPE_1__* rrdfamily; int rrdvar_root_index; TYPE_4__* rrdhost; } ;
struct TYPE_8__ {int * key_fullname; int * key_fullid; int * var_host_name; int * var_host; int * var_family_name; int * var_family; int * var_local; TYPE_3__* rrdset; } ;
struct TYPE_7__ {int rrdvar_root_index; } ;
typedef TYPE_2__ RRDSETVAR ;
typedef TYPE_3__ RRDSET ;
typedef TYPE_4__ RRDHOST ;


 int freez (int *) ;
 int rrdvar_free (TYPE_4__*,int *,int *) ;

__attribute__((used)) static inline void rrdsetvar_free_variables(RRDSETVAR *rs) {
    RRDSET *st = rs->rrdset;
    RRDHOST *host = st->rrdhost;



    rrdvar_free(host, &st->rrdvar_root_index, rs->var_local);
    rs->var_local = ((void*)0);



    rrdvar_free(host, &st->rrdfamily->rrdvar_root_index, rs->var_family);
    rs->var_family = ((void*)0);

    rrdvar_free(host, &st->rrdfamily->rrdvar_root_index, rs->var_family_name);
    rs->var_family_name = ((void*)0);



    rrdvar_free(host, &host->rrdvar_root_index, rs->var_host);
    rs->var_host = ((void*)0);

    rrdvar_free(host, &host->rrdvar_root_index, rs->var_host_name);
    rs->var_host_name = ((void*)0);



    freez(rs->key_fullid);
    rs->key_fullid = ((void*)0);

    freez(rs->key_fullname);
    rs->key_fullname = ((void*)0);
}
