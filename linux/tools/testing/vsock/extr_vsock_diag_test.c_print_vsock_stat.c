
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vdiag_ino; int vdiag_shutdown; int vdiag_state; int vdiag_type; int vdiag_dst_port; int vdiag_dst_cid; int vdiag_src_port; int vdiag_src_cid; } ;
struct vsock_stat {TYPE_1__ msg; } ;
typedef int FILE ;


 int fprintf (int *,char*,...) ;
 int print_vsock_addr (int *,int ,int ) ;
 char* sock_shutdown_str (int ) ;
 char* sock_state_str (int ) ;
 char* sock_type_str (int ) ;

__attribute__((used)) static void print_vsock_stat(FILE *fp, struct vsock_stat *st)
{
 print_vsock_addr(fp, st->msg.vdiag_src_cid, st->msg.vdiag_src_port);
 fprintf(fp, " ");
 print_vsock_addr(fp, st->msg.vdiag_dst_cid, st->msg.vdiag_dst_port);
 fprintf(fp, " %s %s %s %u\n",
  sock_type_str(st->msg.vdiag_type),
  sock_state_str(st->msg.vdiag_state),
  sock_shutdown_str(st->msg.vdiag_shutdown),
  st->msg.vdiag_ino);
}
