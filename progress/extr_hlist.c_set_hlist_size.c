
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ceil (double) ;
 int max_hlist_size ;

void set_hlist_size(double throughput_wait_secs) {
   int new_size;
   new_size = ceil(10.0 / throughput_wait_secs);
   max_hlist_size = (new_size > 1) ? new_size : max_hlist_size;
}
