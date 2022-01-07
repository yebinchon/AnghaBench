
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef char calculated_number ;
typedef int avl_tree_lock ;
typedef int RRDVAR ;


 int D_VARIABLES ;
 char NAN ;
 int RRDVAR_OPTION_ALLOCATED ;
 int RRDVAR_OPTION_CUSTOM_HOST_VAR ;
 int RRDVAR_TYPE_CALCULATED ;
 char* callocz (int,int) ;
 int debug (int ,char*,char const*) ;
 int freez (char*) ;
 int * rrdvar_create_and_index (char const*,int *,char const*,int ,int,char*) ;
 int rrdvar_fix_name (char*) ;
 int * rrdvar_index_find (int *,char*,int ) ;
 int simple_hash (char*) ;
 char* strdupz (char const*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static RRDVAR *rrdvar_custom_variable_create(const char *scope, avl_tree_lock *tree_lock, const char *name) {
    calculated_number *v = callocz(1, sizeof(calculated_number));
    *v = NAN;

    RRDVAR *rv = rrdvar_create_and_index(scope, tree_lock, name, RRDVAR_TYPE_CALCULATED, RRDVAR_OPTION_CUSTOM_HOST_VAR|RRDVAR_OPTION_ALLOCATED, v);
    if(unlikely(!rv)) {
        freez(v);
        debug(D_VARIABLES, "Requested variable '%s' already exists - possibly 2 plugins are updating it at the same time.", name);

        char *variable = strdupz(name);
        rrdvar_fix_name(variable);
        uint32_t hash = simple_hash(variable);


        rv = rrdvar_index_find(tree_lock, variable, hash);

        freez(variable);
    }

    return rv;
}
