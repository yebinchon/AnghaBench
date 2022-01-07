
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int alarm_triggered ;

__attribute__((used)) static void
process_alarm(int sig)
{
 alarm_triggered = 1;
}
