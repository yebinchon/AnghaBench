
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * nodePtr; } ;
struct TYPE_5__ {TYPE_1__ snziNodeOrRoot; } ;
typedef TYPE_2__ ptw32_oll_ticket_t ;
typedef int BOOL ;



BOOL
ptw32_oll_Arrived(ptw32_oll_ticket_t t)
{
  return (t.snziNodeOrRoot.nodePtr != ((void*)0));
}
