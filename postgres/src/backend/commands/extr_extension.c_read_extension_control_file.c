
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int relocatable; int superuser; int encoding; int name; } ;
typedef TYPE_1__ ExtensionControlFile ;


 scalar_t__ palloc0 (int) ;
 int parse_extension_control_file (TYPE_1__*,int *) ;
 int pstrdup (char const*) ;

__attribute__((used)) static ExtensionControlFile *
read_extension_control_file(const char *extname)
{
 ExtensionControlFile *control;




 control = (ExtensionControlFile *) palloc0(sizeof(ExtensionControlFile));
 control->name = pstrdup(extname);
 control->relocatable = 0;
 control->superuser = 1;
 control->encoding = -1;




 parse_extension_control_file(control, ((void*)0));

 return control;
}
