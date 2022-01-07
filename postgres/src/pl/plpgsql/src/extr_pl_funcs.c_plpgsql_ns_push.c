
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PLpgSQL_label_type ;


 int PLPGSQL_NSTYPE_LABEL ;
 int plpgsql_ns_additem (int ,int,char const*) ;

void
plpgsql_ns_push(const char *label, PLpgSQL_label_type label_type)
{
 if (label == ((void*)0))
  label = "";
 plpgsql_ns_additem(PLPGSQL_NSTYPE_LABEL, (int) label_type, label);
}
