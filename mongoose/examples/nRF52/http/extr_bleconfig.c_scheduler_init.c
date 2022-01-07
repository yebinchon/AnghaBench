
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int APP_SCHED_INIT (int ,int ) ;
 int SCHED_MAX_EVENT_DATA_SIZE ;
 int SCHED_QUEUE_SIZE ;

__attribute__((used)) static void scheduler_init(void)
{
  APP_SCHED_INIT(SCHED_MAX_EVENT_DATA_SIZE, SCHED_QUEUE_SIZE);
}
