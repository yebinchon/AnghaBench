
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pid_stat {scalar_t__ sortlist; } ;
typedef size_t pid_t ;


 struct pid_stat** all_pids ;

__attribute__((used)) static int compar_pid(const void *pid1, const void *pid2) {

    struct pid_stat *p1 = all_pids[*((pid_t *)pid1)];
    struct pid_stat *p2 = all_pids[*((pid_t *)pid2)];

    if(p1->sortlist > p2->sortlist)
        return -1;
    else
        return 1;
}
