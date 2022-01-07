
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int r_cons_context_break (int *) ;
 int r_cons_context_default ;

__attribute__((used)) static void __break_signal(int sig) {
 r_cons_context_break (&r_cons_context_default);
}
