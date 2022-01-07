
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ LSCRIU_need_checkpoint () ;
 int LSCRIU_try_checkpoint (int*) ;
 int getpid () ;
 int lscriu_dbg (char*,int ) ;

__attribute__((used)) static void LSCRIU_on_timer(int *forked_pid)
{
    lscriu_dbg("LSCRIU (%d): LSCRIU_on_timer\n", getpid());
    if (LSCRIU_need_checkpoint()) {
        LSCRIU_try_checkpoint(forked_pid);
    }
}
