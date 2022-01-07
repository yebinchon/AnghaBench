
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ vdiag_state; } ;
struct vsock_stat {TYPE_1__ msg; } ;
typedef scalar_t__ __u8 ;


 int EXIT_FAILURE ;
 int exit (int ) ;
 int fprintf (int ,char*,scalar_t__,scalar_t__) ;
 int stderr ;

__attribute__((used)) static void check_socket_state(struct vsock_stat *st, __u8 state)
{
 if (st->msg.vdiag_state != state) {
  fprintf(stderr, "expected socket state %#x, got %#x\n",
   state, st->msg.vdiag_state);
  exit(EXIT_FAILURE);
 }
}
