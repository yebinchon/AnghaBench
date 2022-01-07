
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int capture_active () ;
 scalar_t__ capture_alive () ;
 scalar_t__ capture_restarted () ;
 int init_pipe () ;
 int ipc_pipe_client_valid (int *) ;
 int pipe ;

__attribute__((used)) static inline bool capture_should_init(void)
{
 if (!capture_active() && capture_restarted()) {
  if (capture_alive()) {
   if (!ipc_pipe_client_valid(&pipe)) {
    init_pipe();
   }
   return 1;
  }
 }

 return 0;
}
