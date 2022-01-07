
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ** data; } ;
struct vlc_source {TYPE_1__ frame; } ;


 size_t MAX_AV_PLANES ;

__attribute__((used)) static void *vlcs_video_lock(void *data, void **planes)
{
 struct vlc_source *c = data;
 for (size_t i = 0; i < MAX_AV_PLANES && c->frame.data[i] != ((void*)0); i++)
  planes[i] = c->frame.data[i];
 return ((void*)0);
}
