
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * priv; } ;
typedef TYPE_1__ stream_t ;
typedef int AVIOContext ;


 int avio_close (int *) ;

__attribute__((used)) static void close_f(stream_t *stream)
{
    AVIOContext *avio = stream->priv;





    if (avio)
        avio_close(avio);
}
