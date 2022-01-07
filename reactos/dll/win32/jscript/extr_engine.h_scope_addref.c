
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ref; } ;
typedef TYPE_1__ scope_chain_t ;



__attribute__((used)) static inline scope_chain_t *scope_addref(scope_chain_t *scope)
{
    scope->ref++;
    return scope;
}
