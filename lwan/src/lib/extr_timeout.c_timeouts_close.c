
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeouts {int dummy; } ;


 int free (struct timeouts*) ;
 int timeouts_reset (struct timeouts*) ;

void timeouts_close(struct timeouts *T)
{




    timeouts_reset(T);

    free(T);
}
