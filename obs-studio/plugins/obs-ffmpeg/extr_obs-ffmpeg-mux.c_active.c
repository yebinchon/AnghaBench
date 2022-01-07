
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ffmpeg_muxer {int active; } ;


 int os_atomic_load_bool (int *) ;

__attribute__((used)) static inline bool active(struct ffmpeg_muxer *stream)
{
 return os_atomic_load_bool(&stream->active);
}
