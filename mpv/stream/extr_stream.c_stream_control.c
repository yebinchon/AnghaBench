
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* control ) (TYPE_1__*,int,void*) ;} ;
typedef TYPE_1__ stream_t ;


 int STREAM_UNSUPPORTED ;
 int stub1 (TYPE_1__*,int,void*) ;

int stream_control(stream_t *s, int cmd, void *arg)
{
    return s->control ? s->control(s, cmd, arg) : STREAM_UNSUPPORTED;
}
