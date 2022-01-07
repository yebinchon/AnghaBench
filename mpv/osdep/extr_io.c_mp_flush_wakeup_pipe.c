
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int read (int,char*,int) ;

void mp_flush_wakeup_pipe(int pipe_end)
{

    char buf[100];
    (void)read(pipe_end, buf, sizeof(buf));

}
