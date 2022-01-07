
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct agent_info {int cpus; int ctl_fd; int * rw_ti; int pipe_size; int use_stdout; } ;


 scalar_t__ CTL_PATH ;
 int EXIT_FAILURE ;
 int exit (int ) ;
 char* make_input_path (int) ;
 char* make_output_path (int) ;
 int pr_debug (char*) ;
 int rw_ctl_init (char const*) ;
 int rw_thread_init (int,char const*,char const*,int ,int ,int ) ;

__attribute__((used)) static void *agent_info_init(struct agent_info *s)
{
 int cpu;
 const char *in_path = ((void*)0);
 const char *out_path = ((void*)0);


 for (cpu = 0; cpu < s->cpus; cpu++) {

  in_path = make_input_path(cpu);
  if (in_path == ((void*)0))
   goto error;


  if (!s->use_stdout) {
   out_path = make_output_path(cpu);
   if (out_path == ((void*)0))
    goto error;
  } else

   pr_debug("stdout mode\n");

  rw_thread_init(cpu, in_path, out_path, s->use_stdout,
      s->pipe_size, s->rw_ti[cpu]);
 }


 s->ctl_fd = rw_ctl_init((const char *)CTL_PATH);

 return ((void*)0);

error:
 exit(EXIT_FAILURE);
}
