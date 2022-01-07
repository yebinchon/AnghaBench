
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sqlerrstate; int * label; } ;


 int ERRCODE_UNDEFINED_OBJECT ;
 int ERROR ;
 int MAKE_SQLSTATE (char const,char const,char const,char const,char const) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*) ;
 TYPE_1__* exception_label_map ;
 scalar_t__ strcmp (char const*,int *) ;
 int strlen (char const*) ;
 int strspn (char const*,char*) ;

int
plpgsql_recognize_err_condition(const char *condname, bool allow_sqlstate)
{
 int i;

 if (allow_sqlstate)
 {
  if (strlen(condname) == 5 &&
   strspn(condname, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ") == 5)
   return MAKE_SQLSTATE(condname[0],
         condname[1],
         condname[2],
         condname[3],
         condname[4]);
 }

 for (i = 0; exception_label_map[i].label != ((void*)0); i++)
 {
  if (strcmp(condname, exception_label_map[i].label) == 0)
   return exception_label_map[i].sqlerrstate;
 }

 ereport(ERROR,
   (errcode(ERRCODE_UNDEFINED_OBJECT),
    errmsg("unrecognized exception condition \"%s\"",
     condname)));
 return 0;
}
