
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symt {int dummy; } ;
struct module {int pool; int vtypes; } ;


 int assert (struct symt**) ;
 struct symt** vector_add (int *,int *) ;

__attribute__((used)) static void symt_add_type(struct module* module, struct symt* symt)
{
    struct symt** p;
    p = vector_add(&module->vtypes, &module->pool);
    assert(p);
    *p = symt;
}
