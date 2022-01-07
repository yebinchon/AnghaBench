
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pevaluator {int pool; } ;
struct pdb_cmd_pair {int * pvalue; scalar_t__ name; } ;
typedef int DWORD_PTR ;
typedef int BOOL ;


 int TRUE ;
 scalar_t__ pev_get_val (struct pevaluator*,scalar_t__,int *) ;
 int pool_destroy (int *) ;

__attribute__((used)) static BOOL pev_free(struct pevaluator* pev, struct pdb_cmd_pair* cpair)
{
    DWORD_PTR val;

    if (cpair) for (; cpair->name; cpair++)
    {
        if (pev_get_val(pev, cpair->name, &val))
            *cpair->pvalue = val;
    }
    pool_destroy(&pev->pool);
    return TRUE;
}
