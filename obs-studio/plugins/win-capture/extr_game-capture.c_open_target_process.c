
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int executable; } ;
struct game_capture {int target_process; int app_sid; scalar_t__ is_app; int process_is_64bit; TYPE_1__ config; int process_id; } ;


 int PROCESS_QUERY_INFORMATION ;
 int SYNCHRONIZE ;
 int get_app_sid (int ) ;
 int is_64bit_process (int ) ;
 scalar_t__ is_app (int ) ;
 int open_process (int,int,int ) ;
 int warn (char*,int ) ;

__attribute__((used)) static inline bool open_target_process(struct game_capture *gc)
{
 gc->target_process = open_process(
  PROCESS_QUERY_INFORMATION | SYNCHRONIZE, 0, gc->process_id);
 if (!gc->target_process) {
  warn("could not open process: %s", gc->config.executable);
  return 0;
 }

 gc->process_is_64bit = is_64bit_process(gc->target_process);
 gc->is_app = is_app(gc->target_process);
 if (gc->is_app) {
  gc->app_sid = get_app_sid(gc->target_process);
 }
 return 1;
}
