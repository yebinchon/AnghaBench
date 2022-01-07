
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ flags; int * cmd_defns; int * load_pubkey; int * load_privkey; int * ctrl; int * finish; int * init; int * destroy; int * digests; int * ciphers; int * rand_meth; int * dh_meth; int * dsa_meth; int * rsa_meth; int * name; int * id; } ;
typedef TYPE_1__ ENGINE ;



void engine_set_all_null(ENGINE *e)
{
    e->id = ((void*)0);
    e->name = ((void*)0);
    e->rsa_meth = ((void*)0);
    e->dsa_meth = ((void*)0);
    e->dh_meth = ((void*)0);
    e->rand_meth = ((void*)0);
    e->ciphers = ((void*)0);
    e->digests = ((void*)0);
    e->destroy = ((void*)0);
    e->init = ((void*)0);
    e->finish = ((void*)0);
    e->ctrl = ((void*)0);
    e->load_privkey = ((void*)0);
    e->load_pubkey = ((void*)0);
    e->cmd_defns = ((void*)0);
    e->flags = 0;
}
