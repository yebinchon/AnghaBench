
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_entry {scalar_t__ data; } ;


 int puts (char*) ;

__attribute__((used)) static void trace_print_string(struct trace_entry *e)
{
 char *str;

 str = (char *)e->data;
 puts(str);
}
