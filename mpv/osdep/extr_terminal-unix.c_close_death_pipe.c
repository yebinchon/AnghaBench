
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int close (int) ;
 int* death_pipe ;

__attribute__((used)) static void close_death_pipe(void)
{
    for (int n = 0; n < 2; n++) {
        if (death_pipe[n] >= 0)
            close(death_pipe[n]);
        death_pipe[n] = -1;
    }
}
