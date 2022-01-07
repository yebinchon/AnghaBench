
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERROR ;
 int elog (int ,char*,char) ;

__attribute__((used)) static const char *
get_am_type_string(char amtype)
{
 switch (amtype)
 {
  case 129:
   return "INDEX";
  case 128:
   return "TABLE";
  default:

   elog(ERROR, "invalid access method type '%c'", amtype);
   return ((void*)0);
 }
}
