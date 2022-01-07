
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int protocol; } ;
struct TYPE_5__ {TYPE_1__ Link; } ;
typedef TYPE_2__ RTMP ;


 int RTMP_FEATURE_WRITE ;

void
RTMP_EnableWrite(RTMP *r)
{
    r->Link.protocol |= RTMP_FEATURE_WRITE;
}
