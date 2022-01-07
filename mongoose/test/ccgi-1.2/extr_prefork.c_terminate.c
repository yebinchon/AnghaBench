
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int terminate_flag ;

__attribute__((used)) static void
terminate(int sig) {
    terminate_flag = 1;
}
