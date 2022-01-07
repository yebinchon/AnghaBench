
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pevaluator {char* error; int values; int pool; scalar_t__ stk_index; int stack; struct cpu_stack_walk* csw; } ;
struct pdb_cmd_pair {char* name; int * pvalue; } ;
struct cpu_stack_walk {int dummy; } ;
struct TYPE_3__ {int savedregs_size; int params_size; int locals_size; int start; } ;
typedef TYPE_1__ PDB_FPO_DATA ;


 int hash_table_init (int *,int *,int) ;
 int pev_set_value (struct pevaluator*,char*,int ) ;
 int pool_init (int *,int) ;
 int vector_init (int *,int,int) ;

__attribute__((used)) static void pev_init(struct pevaluator* pev, struct cpu_stack_walk* csw,
                      PDB_FPO_DATA* fpoext, struct pdb_cmd_pair* cpair)
{
    pev->csw = csw;
    pool_init(&pev->pool, 512);
    vector_init(&pev->stack, sizeof(char*), 8);
    pev->stk_index = 0;
    hash_table_init(&pev->pool, &pev->values, 8);
    pev->error[0] = '\0';
    for (; cpair->name; cpair++)
        pev_set_value(pev, cpair->name, *cpair->pvalue);
    pev_set_value(pev, ".raSearchStart", fpoext->start);
    pev_set_value(pev, ".cbLocals", fpoext->locals_size);
    pev_set_value(pev, ".cbParams", fpoext->params_size);
    pev_set_value(pev, ".cbSavedRegs", fpoext->savedregs_size);
}
