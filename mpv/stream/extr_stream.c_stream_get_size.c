
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* get_size ) (TYPE_1__*) ;} ;
typedef TYPE_1__ stream_t ;
typedef int int64_t ;


 int stub1 (TYPE_1__*) ;

int64_t stream_get_size(stream_t *s)
{
    return s->get_size ? s->get_size(s) : -1;
}
