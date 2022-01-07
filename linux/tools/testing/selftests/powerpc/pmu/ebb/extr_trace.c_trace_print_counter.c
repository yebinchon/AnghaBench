
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct trace_entry {scalar_t__ data; } ;


 int printf (char*,int ) ;

__attribute__((used)) static void trace_print_counter(struct trace_entry *e)
{
 u64 *value;

 value = (u64 *)e->data;
 printf("counter = %lld\n", *value);
}
