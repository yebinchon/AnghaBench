
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int target_signal_to_host (int) ;

int
host_signal_from_nto (int sig) {
 return target_signal_to_host (target_signal_to_host (sig));
}
