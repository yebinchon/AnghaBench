
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v2 ;
struct pevaluator {int csw; } ;
typedef int res ;
typedef int DWORD_PTR ;
typedef int BOOL ;


 int FALSE ;
 int PEV_ERROR1 (struct pevaluator*,char*,int ) ;
 int PEV_MAX_LEN ;
 int TRUE ;
 int pev_pop_val (struct pevaluator*,int *) ;
 int pev_push (struct pevaluator*,char*) ;
 int snprintf (char*,int,char*,int ) ;
 int sw_read_mem (int ,int ,int *,int) ;

__attribute__((used)) static BOOL pev_deref(struct pevaluator* pev)
{
    char res[PEV_MAX_LEN];
    DWORD_PTR v1, v2;

    if (!pev_pop_val(pev, &v1)) return FALSE;
    if (!sw_read_mem(pev->csw, v1, &v2, sizeof(v2)))
        return PEV_ERROR1(pev, "deref: cannot read mem at %lx\n", v1);
    snprintf(res, sizeof(res), "%ld", v2);
    pev_push(pev, res);
    return TRUE;
}
