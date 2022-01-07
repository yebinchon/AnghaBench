
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NODE_DBG (char*) ;

__attribute__((used)) static void coap_sent(void *arg)
{
  NODE_DBG("coap_sent is called.\n");
}
