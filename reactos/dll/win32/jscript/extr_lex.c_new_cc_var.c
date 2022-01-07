
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ccval_t ;
struct TYPE_5__ {int name_len; struct TYPE_5__* next; int name; int val; } ;
typedef TYPE_1__ cc_var_t ;
struct TYPE_6__ {TYPE_1__* vars; } ;
typedef TYPE_2__ cc_ctx_t ;
typedef int WCHAR ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 TYPE_1__* heap_alloc (int) ;
 int lstrlenW (int const*) ;
 int memcpy (int ,int const*,int) ;

__attribute__((used)) static BOOL new_cc_var(cc_ctx_t *cc, const WCHAR *name, int len, ccval_t v)
{
    cc_var_t *new_v;

    if(len == -1)
        len = lstrlenW(name);

    new_v = heap_alloc(sizeof(cc_var_t) + (len+1)*sizeof(WCHAR));
    if(!new_v)
        return FALSE;

    new_v->val = v;
    memcpy(new_v->name, name, (len+1)*sizeof(WCHAR));
    new_v->name_len = len;
    new_v->next = cc->vars;
    cc->vars = new_v;
    return TRUE;
}
