
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct status_output {scalar_t__ fd; int flags; int read_buf; } ;
typedef scalar_t__ off_t ;


 int ASSERT (int ) ;
 int M_ERRNO ;
 int M_WARN ;
 int SEEK_CUR ;
 int STATUS_OUTPUT_WRITE ;
 scalar_t__ buf_defined (int *) ;
 int buf_init (int *,int ) ;
 int chsize (scalar_t__,long const) ;
 scalar_t__ ftruncate (scalar_t__,scalar_t__ const) ;
 scalar_t__ lseek (scalar_t__,scalar_t__,int ) ;
 int msg (int,char*) ;

void
status_flush(struct status_output *so)
{
    if (so && so->fd >= 0 && (so->flags & STATUS_OUTPUT_WRITE))
    {
        if (buf_defined(&so->read_buf))
        {
            ASSERT(buf_init(&so->read_buf, 0));
        }
    }
}
