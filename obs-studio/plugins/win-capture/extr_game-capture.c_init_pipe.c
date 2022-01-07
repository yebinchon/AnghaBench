
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct game_capture {int pipe; int process_id; } ;


 char* PIPE_NAME ;
 int ipc_pipe_server_start (int *,char*,int ,struct game_capture*) ;
 int pipe_log ;
 int sprintf (char*,char*,char*,int ) ;
 int warn (char*) ;

__attribute__((used)) static inline bool init_pipe(struct game_capture *gc)
{
 char name[64];
 sprintf(name, "%s%lu", PIPE_NAME, gc->process_id);

 if (!ipc_pipe_server_start(&gc->pipe, name, pipe_log, gc)) {
  warn("init_pipe: failed to start pipe");
  return 0;
 }

 return 1;
}
