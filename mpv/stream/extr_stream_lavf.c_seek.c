
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * priv; } ;
typedef TYPE_1__ stream_t ;
typedef int int64_t ;
typedef int AVIOContext ;


 int SEEK_SET ;
 scalar_t__ avio_seek (int *,int ,int ) ;

__attribute__((used)) static int seek(stream_t *s, int64_t newpos)
{
    AVIOContext *avio = s->priv;
    if (avio_seek(avio, newpos, SEEK_SET) < 0) {
        return 0;
    }
    return 1;
}
