
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clock_id ;
 char* clockstring (int ) ;
 int printf (char*,char*,char*,char*) ;

void describe_timer(int flags, int interval)
{
 printf("%-22s %s %s ",
   clockstring(clock_id),
   flags ? "ABSTIME":"RELTIME",
   interval ? "PERIODIC":"ONE-SHOT");
}
