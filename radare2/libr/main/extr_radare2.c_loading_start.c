
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int loading_thread ;
 int r_th_new (int ,int *,int) ;
 int r_th_setname (int ,char*) ;
 scalar_t__ r_th_start (int ,int) ;
 int thread ;

__attribute__((used)) static void loading_start() {
 thread = r_th_new (loading_thread, ((void*)0), 1);
 if (r_th_start (thread, 1)) {
  r_th_setname (thread, "r2_th");
 }
}
