
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int value; } ;
typedef TYPE_1__ RCFValueString ;


 int R_FREE (char*) ;
 int printf (char*,char*) ;
 char* r_str_replace (char*,char*,char*,int) ;
 char* strdup (int ) ;

__attribute__((used)) static void r_cf_value_string_print(RCFValueString *string) {
 char *escaped = strdup (string->value);
 escaped = r_str_replace (escaped, "\"", "\\\"", 1);
 printf ("\"%s\"", escaped);
 R_FREE (escaped);
}
