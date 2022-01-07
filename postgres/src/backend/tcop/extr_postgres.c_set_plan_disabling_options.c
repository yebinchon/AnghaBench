
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GucSource ;
typedef int GucContext ;


 int SetConfigOption (char const*,char*,int ,int ) ;

bool
set_plan_disabling_options(const char *arg, GucContext context, GucSource source)
{
 const char *tmp = ((void*)0);

 switch (arg[0])
 {
  case 's':
   tmp = "enable_seqscan";
   break;
  case 'i':
   tmp = "enable_indexscan";
   break;
  case 'o':
   tmp = "enable_indexonlyscan";
   break;
  case 'b':
   tmp = "enable_bitmapscan";
   break;
  case 't':
   tmp = "enable_tidscan";
   break;
  case 'n':
   tmp = "enable_nestloop";
   break;
  case 'm':
   tmp = "enable_mergejoin";
   break;
  case 'h':
   tmp = "enable_hashjoin";
   break;
 }
 if (tmp)
 {
  SetConfigOption(tmp, "false", context, source);
  return 1;
 }
 else
  return 0;
}
