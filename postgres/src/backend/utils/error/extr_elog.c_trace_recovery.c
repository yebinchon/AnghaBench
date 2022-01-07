
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG ;
 int trace_recovery_messages ;

int
trace_recovery(int trace_level)
{
 if (trace_level < LOG &&
  trace_level >= trace_recovery_messages)
  return LOG;

 return trace_level;
}
