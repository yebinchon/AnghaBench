
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int b_p_ro; struct TYPE_6__* b_next; } ;
typedef TYPE_1__ buf_T ;


 int FALSE ;
 scalar_t__ bufIsChanged (TYPE_1__*) ;
 int buf_valid (TYPE_1__*) ;
 int buf_write_all (TYPE_1__*,int ) ;
 TYPE_1__* firstbuf ;
 scalar_t__ p_aw ;
 scalar_t__ p_awa ;
 int p_write ;

void
autowrite_all()
{
    buf_T *buf;

    if (!(p_aw || p_awa) || !p_write)
 return;
    for (buf = firstbuf; buf; buf = buf->b_next)
 if (bufIsChanged(buf) && !buf->b_p_ro)
 {
     (void)buf_write_all(buf, FALSE);





 }
}
