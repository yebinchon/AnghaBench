
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int data; } ;
struct TYPE_6__ {int output_flags; int (* focus ) (int ,int) ;} ;
struct TYPE_8__ {TYPE_2__ context; TYPE_1__ info; } ;
typedef TYPE_3__ obs_source_t ;


 int OBS_SOURCE_INTERACTION ;
 int obs_source_valid (TYPE_3__*,char*) ;
 int stub1 (int ,int) ;

void obs_source_send_focus(obs_source_t *source, bool focus)
{
 if (!obs_source_valid(source, "obs_source_send_focus"))
  return;

 if (source->info.output_flags & OBS_SOURCE_INTERACTION) {
  if (source->info.focus) {
   source->info.focus(source->context.data, focus);
  }
 }
}
