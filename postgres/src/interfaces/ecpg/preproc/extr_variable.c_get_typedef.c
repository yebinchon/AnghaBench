
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct typedefs {struct typedefs* next; int name; } ;


 int PARSE_ERROR ;
 int mmfatal (int ,char*,char*) ;
 scalar_t__ strcmp (int ,char*) ;
 struct typedefs* types ;

struct typedefs *
get_typedef(char *name)
{
 struct typedefs *this;

 for (this = types; this && strcmp(this->name, name) != 0; this = this->next);
 if (!this)
  mmfatal(PARSE_ERROR, "unrecognized data type name \"%s\"", name);

 return this;
}
