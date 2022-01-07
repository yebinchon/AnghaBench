
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* ident; } ;
typedef TYPE_1__* MemoryContext ;


 int AssertArg (int ) ;
 int MemoryContextIsValid (TYPE_1__*) ;

void
MemoryContextSetIdentifier(MemoryContext context, const char *id)
{
 AssertArg(MemoryContextIsValid(context));
 context->ident = id;
}
