
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned short message_id ;
 scalar_t__ os_random () ;

void coap_setup(void)
{
    message_id = (unsigned short)os_random();
}
