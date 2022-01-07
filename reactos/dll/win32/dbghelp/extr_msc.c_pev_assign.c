
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pevaluator {int dummy; } ;
typedef int DWORD_PTR ;
typedef int BOOL ;


 int FALSE ;
 int PEV_ERROR1 (struct pevaluator*,char*,char*) ;
 int PEV_MAX_LEN ;
 int TRUE ;
 int pev_pop (struct pevaluator*,char*) ;
 int pev_pop_val (struct pevaluator*,int *) ;
 int pev_set_value (struct pevaluator*,char*,int ) ;

__attribute__((used)) static BOOL pev_assign(struct pevaluator* pev)
{
    char p2[PEV_MAX_LEN];
    DWORD_PTR v1;

    if (!pev_pop_val(pev, &v1) || !pev_pop(pev, p2)) return FALSE;
    if (p2[0] != '$') return PEV_ERROR1(pev, "assign: %s isn't a variable", p2);
    pev_set_value(pev, p2, v1);

    return TRUE;
}
