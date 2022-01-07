
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pq_putmessage (char,int *,int ) ;

void
pq_putemptymessage(char msgtype)
{
 (void) pq_putmessage(msgtype, ((void*)0), 0);
}
