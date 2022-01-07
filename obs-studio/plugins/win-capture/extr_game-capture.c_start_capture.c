
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct game_capture {TYPE_1__* global_hook_info; } ;
struct TYPE_2__ {scalar_t__ type; } ;


 scalar_t__ CAPTURE_TYPE_MEMORY ;
 int debug (char*) ;
 int info (char*) ;
 int init_shmem_capture (struct game_capture*) ;
 int init_shtex_capture (struct game_capture*) ;

__attribute__((used)) static bool start_capture(struct game_capture *gc)
{
 debug("Starting capture");

 if (gc->global_hook_info->type == CAPTURE_TYPE_MEMORY) {
  if (!init_shmem_capture(gc)) {
   return 0;
  }

  info("memory capture successful");
 } else {
  if (!init_shtex_capture(gc)) {
   return 0;
  }

  info("shared texture capture successful");
 }

 return 1;
}
