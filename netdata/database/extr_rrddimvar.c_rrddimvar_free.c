
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int id; TYPE_2__* variables; int name; TYPE_1__* rrdset; } ;
struct TYPE_8__ {struct TYPE_8__* suffix; struct TYPE_8__* prefix; struct TYPE_8__* next; int key_name; TYPE_3__* rrddim; } ;
struct TYPE_7__ {char* id; int name; } ;
typedef TYPE_1__ RRDSET ;
typedef TYPE_2__ RRDDIMVAR ;
typedef TYPE_3__ RRDDIM ;


 int D_VARIABLES ;
 int debug (int ,char*,char*,int ,int ,int ,...) ;
 int error (char*,int ,char*,int ) ;
 int freez (TYPE_2__*) ;
 int rrddimvar_free_variables (TYPE_2__*) ;

void rrddimvar_free(RRDDIMVAR *rs) {
    RRDDIM *rd = rs->rrddim;
    RRDSET *st = rd->rrdset;
    debug(D_VARIABLES, "RRDDIMSET free for chart id '%s' name '%s', dimension id '%s', name '%s', prefix='%s', suffix='%s'", st->id, st->name, rd->id, rd->name, rs->prefix, rs->suffix);

    rrddimvar_free_variables(rs);

    if(rd->variables == rs) {
        debug(D_VARIABLES, "RRDDIMSET removing first entry for chart id '%s' name '%s', dimension id '%s', name '%s'", st->id, st->name, rd->id, rd->name);
        rd->variables = rs->next;
    }
    else {
        debug(D_VARIABLES, "RRDDIMSET removing non-first entry for chart id '%s' name '%s', dimension id '%s', name '%s'", st->id, st->name, rd->id, rd->name);
        RRDDIMVAR *t;
        for (t = rd->variables; t && t->next != rs; t = t->next) ;
        if(!t) error("RRDDIMVAR '%s' not found in dimension '%s/%s' variables linked list", rs->key_name, st->id, rd->id);
        else t->next = rs->next;
    }

    freez(rs->prefix);
    freez(rs->suffix);
    freez(rs);
}
