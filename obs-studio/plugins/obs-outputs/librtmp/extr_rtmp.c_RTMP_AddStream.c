
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {char* member_0; int member_1; } ;
struct TYPE_7__ {size_t nStreams; TYPE_2__* streams; } ;
struct TYPE_9__ {TYPE_1__ Link; } ;
struct TYPE_8__ {int id; int playpath; } ;
typedef TYPE_3__ RTMP ;
typedef TYPE_4__ AVal ;


 int RTMP_ParsePlaypath (TYPE_4__*,int *) ;
 scalar_t__ strlen (char const*) ;

int RTMP_AddStream(RTMP *r, const char *playpath)
{
    int idx = -1;
    AVal pp = { (char*)playpath, playpath?(int)strlen(playpath):0 };

    RTMP_ParsePlaypath(&pp, &r->Link.streams[r->Link.nStreams].playpath);
    r->Link.streams[r->Link.nStreams].id = -1;

    idx = r->Link.nStreams;
    r->Link.nStreams++;

    return idx;
}
