
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * head; } ;
struct TYPE_4__ {TYPE_2__ triggerNames; TYPE_2__ functionNames; TYPE_2__ indexNames; TYPE_2__ tableNames; TYPE_2__ schemaNames; int strict_names; } ;
typedef TYPE_1__ RestoreOptions ;


 int Assert (int ) ;
 int fatal (char*,char const*) ;
 char* simple_string_list_not_touched (TYPE_2__*) ;

__attribute__((used)) static void
StrictNamesCheck(RestoreOptions *ropt)
{
 const char *missing_name;

 Assert(ropt->strict_names);

 if (ropt->schemaNames.head != ((void*)0))
 {
  missing_name = simple_string_list_not_touched(&ropt->schemaNames);
  if (missing_name != ((void*)0))
   fatal("schema \"%s\" not found", missing_name);
 }

 if (ropt->tableNames.head != ((void*)0))
 {
  missing_name = simple_string_list_not_touched(&ropt->tableNames);
  if (missing_name != ((void*)0))
   fatal("table \"%s\" not found", missing_name);
 }

 if (ropt->indexNames.head != ((void*)0))
 {
  missing_name = simple_string_list_not_touched(&ropt->indexNames);
  if (missing_name != ((void*)0))
   fatal("index \"%s\" not found", missing_name);
 }

 if (ropt->functionNames.head != ((void*)0))
 {
  missing_name = simple_string_list_not_touched(&ropt->functionNames);
  if (missing_name != ((void*)0))
   fatal("function \"%s\" not found", missing_name);
 }

 if (ropt->triggerNames.head != ((void*)0))
 {
  missing_name = simple_string_list_not_touched(&ropt->triggerNames);
  if (missing_name != ((void*)0))
   fatal("trigger \"%s\" not found", missing_name);
 }
}
