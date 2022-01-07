
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Status {int dummy; } ;


 int UNUSEDPARM (struct Status*) ;
 int fprintf (int ,char*) ;
 int stderr ;

void
status_finish(struct Status *status)
{
    UNUSEDPARM(status);
    fprintf(stderr,
"                                                                             \r");
}
