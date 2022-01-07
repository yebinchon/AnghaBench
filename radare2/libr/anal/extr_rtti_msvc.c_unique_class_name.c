
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ verbose; } ;
typedef TYPE_1__ RAnal ;


 int eprintf (char*,char const*) ;
 int free (char*) ;
 scalar_t__ r_anal_class_exists (TYPE_1__*,char const*) ;
 char* r_str_newf (char*,char const*,int ) ;
 char* strdup (char const*) ;

__attribute__((used)) static char *unique_class_name(RAnal *anal, const char *original_name) {
 if (!r_anal_class_exists (anal, original_name)) {
  return strdup (original_name);
 }

 char *name = ((void*)0);
 if (anal->verbose) {
  eprintf ("Warning: class name %s already taken!\n", original_name);
 }
 int i = 1;

 do {
  free (name);
  name = r_str_newf ("%s.%d", original_name, i++);
  if (!name) {
   return ((void*)0);
  }
 } while (r_anal_class_exists (anal, name));

 return name;
}
