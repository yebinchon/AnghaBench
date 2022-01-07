
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int rrdvar_root_index; } ;
struct TYPE_9__ {TYPE_1__* rrdfamily; int rrdvar_root_index; int name; int id; TYPE_4__* rrdhost; } ;
struct TYPE_8__ {int options; int value; int type; void* key_fullname; void* var_host_name; void* key_fullid; void* var_host; void* var_family_name; void* var_family; void* variable; void* var_local; TYPE_3__* rrdset; } ;
struct TYPE_7__ {int rrdvar_root_index; } ;
typedef int RRDVAR_OPTIONS ;
typedef TYPE_2__ RRDSETVAR ;
typedef TYPE_3__ RRDSET ;
typedef TYPE_4__ RRDHOST ;


 int RRDVAR_MAX_LENGTH ;
 int RRDVAR_OPTION_ALLOCATED ;
 int rrdsetvar_free_variables (TYPE_2__*) ;
 void* rrdvar_create_and_index (char*,int *,void*,int ,int,int ) ;
 int snprintfz (char*,int ,char*,int ,void*) ;
 void* strdupz (char*) ;

__attribute__((used)) static inline void rrdsetvar_create_variables(RRDSETVAR *rs) {
    RRDSET *st = rs->rrdset;
    RRDHOST *host = st->rrdhost;

    RRDVAR_OPTIONS options = rs->options;
    if(rs->options & RRDVAR_OPTION_ALLOCATED)
        options &= ~ RRDVAR_OPTION_ALLOCATED;




    rrdsetvar_free_variables(rs);




    char buffer[RRDVAR_MAX_LENGTH + 1];
    snprintfz(buffer, RRDVAR_MAX_LENGTH, "%s.%s", st->id, rs->variable);
    rs->key_fullid = strdupz(buffer);

    snprintfz(buffer, RRDVAR_MAX_LENGTH, "%s.%s", st->name, rs->variable);
    rs->key_fullname = strdupz(buffer);



    rs->var_local = rrdvar_create_and_index("local", &st->rrdvar_root_index, rs->variable, rs->type, options, rs->value);



    rs->var_family = rrdvar_create_and_index("family", &st->rrdfamily->rrdvar_root_index, rs->key_fullid, rs->type, options, rs->value);
    rs->var_family_name = rrdvar_create_and_index("family", &st->rrdfamily->rrdvar_root_index, rs->key_fullname, rs->type, options, rs->value);



    rs->var_host = rrdvar_create_and_index("host", &host->rrdvar_root_index, rs->key_fullid, rs->type, options, rs->value);
    rs->var_host_name = rrdvar_create_and_index("host", &host->rrdvar_root_index, rs->key_fullname, rs->type, options, rs->value);
}
