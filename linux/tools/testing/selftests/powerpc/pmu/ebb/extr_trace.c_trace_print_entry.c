
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_entry {int type; } ;


 int BASE_PREFIX ;
 int PREFIX_DELTA ;





 int printf (char*,struct trace_entry*,int) ;
 int puts (char*) ;
 int trace_print_counter (struct trace_entry*) ;
 int trace_print_header (int,int) ;
 int trace_print_reg (struct trace_entry*) ;
 int trace_print_string (struct trace_entry*) ;

__attribute__((used)) static void trace_print_entry(struct trace_entry *e, int seq, int *prefix)
{
 switch (e->type) {
 case 129:
  trace_print_header(seq, *prefix);
  trace_print_reg(e);
  break;
 case 132:
  trace_print_header(seq, *prefix);
  trace_print_counter(e);
  break;
 case 128:
  trace_print_header(seq, *prefix);
  trace_print_string(e);
  break;
 case 131:
  trace_print_header(seq, *prefix);
  puts("{");
  *prefix += PREFIX_DELTA;
  break;
 case 130:
  *prefix -= PREFIX_DELTA;
  if (*prefix < BASE_PREFIX)
   *prefix = BASE_PREFIX;
  trace_print_header(seq, *prefix);
  puts("}");
  break;
 default:
  trace_print_header(seq, *prefix);
  printf("entry @ %p type %d\n", e, e->type);
  break;
 }
}
