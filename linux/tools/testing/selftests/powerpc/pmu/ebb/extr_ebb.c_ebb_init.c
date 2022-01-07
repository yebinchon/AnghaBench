
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int trace; } ;


 int SIGTERM ;
 int clear_ebb_stats () ;
 TYPE_1__ ebb_state ;
 int perror (char*) ;
 scalar_t__ sigaction (int ,int *,int *) ;
 int term_action ;
 int trace_buffer_allocate (int) ;

__attribute__((used)) static void __attribute__((constructor)) ebb_init(void)
{
 clear_ebb_stats();

 if (sigaction(SIGTERM, &term_action, ((void*)0)))
  perror("sigaction");

 ebb_state.trace = trace_buffer_allocate(1 * 1024 * 1024);
}
