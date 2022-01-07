
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct argv {char** argv; int argc; } ;


 int argv_grow (struct argv*,int) ;

__attribute__((used)) static void
argv_append(struct argv *a, char *str)
{
    argv_grow(a, 1);
    a->argv[a->argc++] = str;
}
