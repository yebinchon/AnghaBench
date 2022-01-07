
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct track {TYPE_3__* stream; } ;
struct TYPE_6__ {TYPE_2__* codec; } ;
struct TYPE_4__ {int num; } ;
struct TYPE_5__ {TYPE_1__ channels; } ;



__attribute__((used)) static int track_channels(struct track *track)
{
    return track->stream ? track->stream->codec->channels.num : 0;
}
