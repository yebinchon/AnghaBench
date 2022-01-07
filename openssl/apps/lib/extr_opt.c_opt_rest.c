
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char** argv ;
 size_t opt_index ;

char **opt_rest(void)
{
    return &argv[opt_index];
}
