
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int printf (char*) ;

void nlr_jump_fail(void *val) {
    printf("uncaught NLR\n");
    exit(1);
}
