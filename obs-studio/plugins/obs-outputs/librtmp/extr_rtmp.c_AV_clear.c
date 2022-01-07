
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* av_val; } ;
struct TYPE_6__ {TYPE_1__ name; } ;
typedef TYPE_2__ RTMP_METHOD ;


 int free (TYPE_2__*) ;

__attribute__((used)) static void
AV_clear(RTMP_METHOD *vals, int num)
{
    int i;
    for (i = 0; i < num; i++)
        free(vals[i].name.av_val);
    free(vals);
}
