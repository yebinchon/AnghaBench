
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (void*) ;
 int r_sys_setenv (void*,int *) ;

__attribute__((used)) static void tmpenvs_free(void *item) {
 r_sys_setenv (item, ((void*)0));
 free (item);
}
