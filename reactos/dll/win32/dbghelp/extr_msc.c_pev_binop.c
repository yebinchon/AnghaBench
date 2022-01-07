
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pevaluator {int dummy; } ;
typedef int res ;
typedef int DWORD_PTR ;
typedef int BOOL ;


 int FALSE ;
 int PEV_ERROR1 (struct pevaluator*,char*,char) ;
 int PEV_MAX_LEN ;
 int TRUE ;
 int pev_pop_val (struct pevaluator*,int*) ;
 int pev_push (struct pevaluator*,char*) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static BOOL pev_binop(struct pevaluator* pev, char op)
{
    char res[PEV_MAX_LEN];
    DWORD_PTR v1, v2, c;

    if (!pev_pop_val(pev, &v1) || !pev_pop_val(pev, &v2)) return FALSE;
    switch (op)
    {
    case '+': c = v1 + v2; break;
    case '-': c = v1 - v2; break;
    case '*': c = v1 * v2; break;
    case '/': c = v1 / v2; break;
    case '%': c = v1 % v2; break;
    default: return PEV_ERROR1(pev, "binop: unknown op (%c)", op);
    }
    snprintf(res, sizeof(res), "%ld", c);
    pev_push(pev, res);
    return TRUE;
}
