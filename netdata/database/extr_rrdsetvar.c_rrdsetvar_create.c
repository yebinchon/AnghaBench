
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* variables; int name; int id; } ;
struct TYPE_6__ {struct TYPE_6__* next; TYPE_2__* rrdset; int options; void* value; int type; int variable; int hash; } ;
typedef int RRDVAR_TYPE ;
typedef int RRDVAR_OPTIONS ;
typedef TYPE_1__ RRDSETVAR ;
typedef TYPE_2__ RRDSET ;


 int D_VARIABLES ;
 scalar_t__ callocz (int,int) ;
 int debug (int ,char*,int ,int ,char const*) ;
 int rrdsetvar_create_variables (TYPE_1__*) ;
 int simple_hash (int ) ;
 int strdupz (char const*) ;

RRDSETVAR *rrdsetvar_create(RRDSET *st, const char *variable, RRDVAR_TYPE type, void *value, RRDVAR_OPTIONS options) {
    debug(D_VARIABLES, "RRDVARSET create for chart id '%s' name '%s' with variable name '%s'", st->id, st->name, variable);
    RRDSETVAR *rs = (RRDSETVAR *)callocz(1, sizeof(RRDSETVAR));

    rs->variable = strdupz(variable);
    rs->hash = simple_hash(rs->variable);
    rs->type = type;
    rs->value = value;
    rs->options = options;
    rs->rrdset = st;

    rs->next = st->variables;
    st->variables = rs;

    rrdsetvar_create_variables(rs);

    return rs;
}
