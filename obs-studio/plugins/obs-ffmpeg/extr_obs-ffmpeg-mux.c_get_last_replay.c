
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int array; } ;
struct ffmpeg_muxer {TYPE_1__ path; int muxing; } ;
typedef int calldata_t ;


 int calldata_set_string (int *,char*,int ) ;
 int os_atomic_load_bool (int *) ;

__attribute__((used)) static void get_last_replay(void *data, calldata_t *cd)
{
 struct ffmpeg_muxer *stream = data;
 if (!os_atomic_load_bool(&stream->muxing))
  calldata_set_string(cd, "path", stream->path.array);
}
