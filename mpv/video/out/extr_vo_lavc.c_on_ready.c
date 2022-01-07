
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo {int dummy; } ;


 int VO_EVENT_INITIAL_UNBLOCK ;
 int vo_event (struct vo*,int ) ;

__attribute__((used)) static void on_ready(void *ptr)
{
    struct vo *vo = ptr;

    vo_event(vo, VO_EVENT_INITIAL_UNBLOCK);
}
