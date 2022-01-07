
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int P_EVENT_HANDLER ;


 int g_cc3100_IRQ_handler ;

int registerInterruptHandler(P_EVENT_HANDLER int_handler, void *pValue) {
  (void) pValue;
  g_cc3100_IRQ_handler = int_handler;
}
