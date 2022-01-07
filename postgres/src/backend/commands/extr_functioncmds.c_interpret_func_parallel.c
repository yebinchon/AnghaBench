
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int arg; } ;
typedef TYPE_1__ DefElem ;


 int ERRCODE_SYNTAX_ERROR ;
 int ERROR ;
 char PROPARALLEL_RESTRICTED ;
 char PROPARALLEL_SAFE ;
 char PROPARALLEL_UNSAFE ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 char* strVal (int ) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static char
interpret_func_parallel(DefElem *defel)
{
 char *str = strVal(defel->arg);

 if (strcmp(str, "safe") == 0)
  return PROPARALLEL_SAFE;
 else if (strcmp(str, "unsafe") == 0)
  return PROPARALLEL_UNSAFE;
 else if (strcmp(str, "restricted") == 0)
  return PROPARALLEL_RESTRICTED;
 else
 {
  ereport(ERROR,
    (errcode(ERRCODE_SYNTAX_ERROR),
     errmsg("parameter \"parallel\" must be SAFE, RESTRICTED, or UNSAFE")));
  return PROPARALLEL_UNSAFE;
 }
}
