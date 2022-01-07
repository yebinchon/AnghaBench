
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct status_output {scalar_t__ fd; } ;
typedef int off_t ;


 int SEEK_SET ;
 int lseek (scalar_t__,int ,int ) ;

void
status_reset(struct status_output *so)
{
    if (so && so->fd >= 0)
    {
        lseek(so->fd, (off_t)0, SEEK_SET);
    }
}
