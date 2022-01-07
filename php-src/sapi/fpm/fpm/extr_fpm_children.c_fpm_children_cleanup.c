
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (int ) ;
 int last_faults ;

__attribute__((used)) static void fpm_children_cleanup(int which, void *arg)
{
 free(last_faults);
}
