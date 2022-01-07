
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pevaluator {int dummy; } ;
typedef int DWORD_PTR ;
typedef int BOOL ;


 int PEV_MAX_LEN ;
 scalar_t__ pev_get_val (struct pevaluator*,char*,int *) ;
 scalar_t__ pev_pop (struct pevaluator*,char*) ;

__attribute__((used)) static BOOL pev_pop_val(struct pevaluator* pev, DWORD_PTR* val)
{
    char p[PEV_MAX_LEN];

    return pev_pop(pev, p) && pev_get_val(pev, p, val);
}
