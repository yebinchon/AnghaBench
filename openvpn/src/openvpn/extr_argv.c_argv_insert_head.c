
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct argv {int * argv; } ;


 struct argv argv_clone (struct argv const*,int) ;
 int string_alloc (char const*,int *) ;

struct argv
argv_insert_head(const struct argv *a, const char *head)
{
    struct argv r;
    r = argv_clone(a, 1);
    r.argv[0] = string_alloc(head, ((void*)0));
    return r;
}
