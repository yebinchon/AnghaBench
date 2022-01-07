
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sival_int; } ;
struct TYPE_5__ {int si_syscall; TYPE_1__ si_value; } ;
typedef TYPE_2__ siginfo_t ;


 int EXIT_FAILURE ;
 int _exit (int ) ;
 int* kill_msg ;
 int strlen (int*) ;
 int write (int,int*,int ) ;

__attribute__((used)) static void handle_syssig(int signum, siginfo_t *si, void *thread_context) {





    int syscall_no = si->si_value.sival_int;






    kill_msg[39] = (syscall_no / 100) % 10 + '0';
    kill_msg[40] = (syscall_no / 10) % 10 + '0';
    kill_msg[41] = syscall_no % 10 + '0';
    if (write(2, kill_msg, strlen(kill_msg)) == -1) {



    }




    _exit(EXIT_FAILURE);
}
