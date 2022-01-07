
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct env_set {int dummy; } ;
struct TYPE_2__ {int es_owned; int es; } ;
struct context {TYPE_1__ c2; } ;


 int env_set_create (int *) ;
 int env_set_inherit (int ,struct env_set const*) ;

__attribute__((used)) static void
do_inherit_env(struct context *c, const struct env_set *src)
{
    c->c2.es = env_set_create(((void*)0));
    c->c2.es_owned = 1;
    env_set_inherit(c->c2.es, src);
}
