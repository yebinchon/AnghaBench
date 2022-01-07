
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; int name; scalar_t__ desc; } ;


 int R_CORE_AUTOCMPLT_END ;
 TYPE_1__* autocomplete_flags ;
 int eprintf (char*,char const*) ;
 int strncmp (char const*,int ,int) ;

__attribute__((used)) static int autocomplete_type(const char* strflag) {
 int i;
 for (i = 0; i < R_CORE_AUTOCMPLT_END; ++i) {
  if (autocomplete_flags[i].desc && !strncmp (strflag, autocomplete_flags[i].name, 5)) {
   return autocomplete_flags[i].type;
  }
 }
 eprintf ("Invalid flag '%s'\n", strflag);
 return R_CORE_AUTOCMPLT_END;
}
