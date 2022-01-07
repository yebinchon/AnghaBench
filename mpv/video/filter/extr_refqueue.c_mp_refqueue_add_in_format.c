
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_refqueue {int conv; } ;


 int mp_autoconvert_add_imgfmt (int ,int,int) ;

void mp_refqueue_add_in_format(struct mp_refqueue *q, int fmt, int subfmt)
{
    mp_autoconvert_add_imgfmt(q->conv, fmt, subfmt);
}
