
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ b_changed; int b_p_ro; struct TYPE_4__* b_next; } ;
typedef TYPE_1__ buf_T ;


 TYPE_1__* firstbuf ;
 int ml_open_file (TYPE_1__*) ;

void
ml_open_files()
{
    buf_T *buf;

    for (buf = firstbuf; buf != ((void*)0); buf = buf->b_next)
 if (!buf->b_p_ro || buf->b_changed)
     ml_open_file(buf);
}
