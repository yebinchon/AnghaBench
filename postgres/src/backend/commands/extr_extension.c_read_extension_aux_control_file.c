
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ExtensionControlFile ;


 int memcpy (int *,int const*,int) ;
 scalar_t__ palloc (int) ;
 int parse_extension_control_file (int *,char const*) ;

__attribute__((used)) static ExtensionControlFile *
read_extension_aux_control_file(const ExtensionControlFile *pcontrol,
        const char *version)
{
 ExtensionControlFile *acontrol;




 acontrol = (ExtensionControlFile *) palloc(sizeof(ExtensionControlFile));
 memcpy(acontrol, pcontrol, sizeof(ExtensionControlFile));




 parse_extension_control_file(acontrol, version);

 return acontrol;
}
