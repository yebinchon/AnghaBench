
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct options {int * client_nat; int * routes; int gc; } ;


 int clone_push_list (struct options*) ;
 int gc_detach (int *) ;

void
options_detach(struct options *o)
{
    gc_detach(&o->gc);
    o->routes = ((void*)0);
    o->client_nat = ((void*)0);



}
