
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * str; } ;
typedef TYPE_1__ stream_t ;
typedef int IStream ;


 int memset (TYPE_1__*,int ,int) ;

void stream_init(stream_t *stream, IStream *str)
{
    memset(stream, 0, sizeof(stream_t));
    stream->str = str;
}
