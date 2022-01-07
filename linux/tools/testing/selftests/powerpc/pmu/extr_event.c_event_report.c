
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event {int dummy; } ;


 int event_report_justified (struct event*,int ,int ) ;

void event_report(struct event *e)
{
 event_report_justified(e, 0, 0);
}
