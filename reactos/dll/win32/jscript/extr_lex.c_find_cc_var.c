
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {unsigned int name_len; int name; struct TYPE_5__* next; } ;
typedef TYPE_1__ cc_var_t ;
struct TYPE_6__ {TYPE_1__* vars; } ;
typedef TYPE_2__ cc_ctx_t ;
typedef int WCHAR ;


 int memcmp (int ,int const*,unsigned int) ;

__attribute__((used)) static cc_var_t *find_cc_var(cc_ctx_t *cc, const WCHAR *name, unsigned name_len)
{
    cc_var_t *iter;

    for(iter = cc->vars; iter; iter = iter->next) {
        if(iter->name_len == name_len && !memcmp(iter->name, name, name_len*sizeof(WCHAR)))
            return iter;
    }

    return ((void*)0);
}
