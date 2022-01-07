
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;


 int exit (int) ;
 int fprintf (int ,char*) ;
 int list_empty (struct list_head*) ;
 int print_vsock_stats (int ,struct list_head*) ;
 int stderr ;

__attribute__((used)) static void check_no_sockets(struct list_head *head)
{
 if (!list_empty(head)) {
  fprintf(stderr, "expected no sockets\n");
  print_vsock_stats(stderr, head);
  exit(1);
 }
}
