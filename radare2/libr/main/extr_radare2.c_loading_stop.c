
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int r_th_kill_free (int *) ;
 int * thread ;

__attribute__((used)) static void loading_stop() {
 r_th_kill_free (thread);
 thread = ((void*)0);
}
