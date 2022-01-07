
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * priv; } ;
typedef TYPE_1__ stream_t ;
typedef int int64_t ;
typedef int AVIOContext ;


 int avio_size (int *) ;

__attribute__((used)) static int64_t get_size(stream_t *s)
{
    AVIOContext *avio = s->priv;
    return avio_size(avio);
}
