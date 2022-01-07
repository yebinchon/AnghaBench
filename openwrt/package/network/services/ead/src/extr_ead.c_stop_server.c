
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ead_instance {scalar_t__ pid; int list; } ;


 int SIGKILL ;
 int free (struct ead_instance*) ;
 int kill (scalar_t__,int ) ;
 int list_del (int *) ;

__attribute__((used)) static void
stop_server(struct ead_instance *in, bool do_free)
{
 if (in->pid > 0)
  kill(in->pid, SIGKILL);
 in->pid = 0;
 if (do_free) {
  list_del(&in->list);
  free(in);
 }
}
