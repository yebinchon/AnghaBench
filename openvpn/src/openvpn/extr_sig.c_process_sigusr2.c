
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct status_output {int dummy; } ;
struct context {int sig; } ;


 int M_INFO ;
 int print_status (struct context const*,struct status_output*) ;
 int signal_reset (int ) ;
 int status_close (struct status_output*) ;
 struct status_output* status_open (int *,int ,int ,int *,int ) ;

__attribute__((used)) static void
process_sigusr2(const struct context *c)
{
    struct status_output *so = status_open(((void*)0), 0, M_INFO, ((void*)0), 0);
    print_status(c, so);
    status_close(so);
    signal_reset(c->sig);
}
