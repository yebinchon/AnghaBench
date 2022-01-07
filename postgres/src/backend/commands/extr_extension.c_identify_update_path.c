
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int name; } ;
typedef int List ;
typedef int ExtensionVersionInfo ;
typedef TYPE_1__ ExtensionControlFile ;


 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERROR ;
 int * NIL ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ,char const*,char const*) ;
 int * find_update_path (int *,int *,int *,int,int) ;
 int * get_ext_ver_info (char const*,int **) ;
 int * get_ext_ver_list (TYPE_1__*) ;

__attribute__((used)) static List *
identify_update_path(ExtensionControlFile *control,
      const char *oldVersion, const char *newVersion)
{
 List *result;
 List *evi_list;
 ExtensionVersionInfo *evi_start;
 ExtensionVersionInfo *evi_target;


 evi_list = get_ext_ver_list(control);


 evi_start = get_ext_ver_info(oldVersion, &evi_list);
 evi_target = get_ext_ver_info(newVersion, &evi_list);


 result = find_update_path(evi_list, evi_start, evi_target, 0, 0);

 if (result == NIL)
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
     errmsg("extension \"%s\" has no update path from version \"%s\" to version \"%s\"",
      control->name, oldVersion, newVersion)));

 return result;
}
