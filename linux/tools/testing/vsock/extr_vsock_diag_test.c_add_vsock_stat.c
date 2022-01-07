
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsock_diag_msg {int dummy; } ;
struct vsock_stat {int list; struct vsock_diag_msg msg; } ;
struct list_head {int dummy; } ;


 int EXIT_FAILURE ;
 int exit (int ) ;
 int list_add_tail (int *,struct list_head*) ;
 struct vsock_stat* malloc (int) ;
 int perror (char*) ;

__attribute__((used)) static void add_vsock_stat(struct list_head *sockets,
      const struct vsock_diag_msg *resp)
{
 struct vsock_stat *st;

 st = malloc(sizeof(*st));
 if (!st) {
  perror("malloc");
  exit(EXIT_FAILURE);
 }

 st->msg = *resp;
 list_add_tail(&st->list, sockets);
}
