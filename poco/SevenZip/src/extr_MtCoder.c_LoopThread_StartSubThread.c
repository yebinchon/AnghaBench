
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WRes ;
struct TYPE_3__ {int startEvent; } ;
typedef TYPE_1__ CLoopThread ;


 int Event_Set (int *) ;

WRes LoopThread_StartSubThread(CLoopThread *p) { return Event_Set(&p->startEvent); }
