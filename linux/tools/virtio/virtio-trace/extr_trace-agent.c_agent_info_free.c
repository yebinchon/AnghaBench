
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct agent_info {int cpus; struct agent_info** rw_ti; int write_pipe; int read_pipe; int out_fd; int in_fd; int ctl_fd; } ;


 int close (int ) ;
 int free (struct agent_info*) ;

__attribute__((used)) static void agent_info_free(struct agent_info *s)
{
 int i;

 close(s->ctl_fd);
 for (i = 0; i < s->cpus; i++) {
  close(s->rw_ti[i]->in_fd);
  close(s->rw_ti[i]->out_fd);
  close(s->rw_ti[i]->read_pipe);
  close(s->rw_ti[i]->write_pipe);
  free(s->rw_ti[i]);
 }
 free(s);
}
