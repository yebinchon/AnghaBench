
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* fmt; } ;
struct ffmpeg_source {TYPE_2__ media; } ;
typedef int int64_t ;
typedef int calldata_t ;
struct TYPE_3__ {int duration; } ;


 int calldata_set_int (int *,char*,int) ;

__attribute__((used)) static void get_duration(void *data, calldata_t *cd)
{
 struct ffmpeg_source *s = data;
 int64_t dur = 0;
 if (s->media.fmt)
  dur = s->media.fmt->duration;

 calldata_set_int(cd, "duration", dur * 1000);
}
