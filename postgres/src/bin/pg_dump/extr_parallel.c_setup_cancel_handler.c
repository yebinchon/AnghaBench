
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int handler_set; } ;


 int SIGINT ;
 int SIGQUIT ;
 int SIGTERM ;
 int pqsignal (int ,int ) ;
 int sigTermHandler ;
 TYPE_1__ signal_info ;

__attribute__((used)) static void
setup_cancel_handler(void)
{




 if (!signal_info.handler_set)
 {
  signal_info.handler_set = 1;

  pqsignal(SIGINT, sigTermHandler);
  pqsignal(SIGTERM, sigTermHandler);
  pqsignal(SIGQUIT, sigTermHandler);
 }
}
