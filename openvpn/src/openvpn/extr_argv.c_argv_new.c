
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct argv {int dummy; } ;


 int argv_init (struct argv*) ;

struct argv
argv_new(void)
{
    struct argv ret;
    argv_init(&ret);
    return ret;
}
