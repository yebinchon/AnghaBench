
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ep_var {int mapping; int name; int type; } ;


 int bfree (int ) ;

__attribute__((used)) static inline void ep_var_free(struct ep_var *epv)
{
 bfree(epv->type);
 bfree(epv->name);
 bfree(epv->mapping);
}
