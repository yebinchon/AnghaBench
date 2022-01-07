
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ exposed; int name; int hash_name; int id; } ;
struct TYPE_7__ {int config_section; int name; } ;
typedef TYPE_1__ RRDSET ;
typedef TYPE_2__ RRDDIM ;


 int CONFIG_MAX_NAME ;
 int D_RRD_CALLS ;
 int RRDSET_FLAG_UPSTREAM_EXPOSED ;
 int config_set_default (int ,char*,char const*) ;
 int debug (int ,char*,int ,int ,int ,char const*) ;
 int rrddimvar_rename_all (TYPE_2__*) ;
 int rrdset_flag_clear (TYPE_1__*,int ) ;
 int simple_hash (int ) ;
 int snprintfz (char*,int ,char*,int ) ;
 int strcmp (int ,char const*) ;
 scalar_t__ unlikely (int) ;

inline int rrddim_set_name(RRDSET *st, RRDDIM *rd, const char *name) {
    if(unlikely(!name || !*name || !strcmp(rd->name, name)))
        return 0;

    debug(D_RRD_CALLS, "rrddim_set_name() from %s.%s to %s.%s", st->name, rd->name, st->name, name);

    char varname[CONFIG_MAX_NAME + 1];
    snprintfz(varname, CONFIG_MAX_NAME, "dim %s name", rd->id);
    rd->name = config_set_default(st->config_section, varname, name);
    rd->hash_name = simple_hash(rd->name);
    rrddimvar_rename_all(rd);
    rd->exposed = 0;
    rrdset_flag_clear(st, RRDSET_FLAG_UPSTREAM_EXPOSED);
    return 1;
}
