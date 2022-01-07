
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct argv {int * argv; scalar_t__ argc; scalar_t__ capacity; } ;



__attribute__((used)) static void
argv_init(struct argv *a)
{
    a->capacity = 0;
    a->argc = 0;
    a->argv = ((void*)0);
}
