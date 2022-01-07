
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int defname; } ;
typedef TYPE_1__ DefElem ;


 char AGGMODIFY_READ_ONLY ;
 char AGGMODIFY_READ_WRITE ;
 char AGGMODIFY_SHAREABLE ;
 int ERRCODE_SYNTAX_ERROR ;
 int ERROR ;
 char* defGetString (TYPE_1__*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static char
extractModify(DefElem *defel)
{
 char *val = defGetString(defel);

 if (strcmp(val, "read_only") == 0)
  return AGGMODIFY_READ_ONLY;
 if (strcmp(val, "shareable") == 0)
  return AGGMODIFY_SHAREABLE;
 if (strcmp(val, "read_write") == 0)
  return AGGMODIFY_READ_WRITE;
 ereport(ERROR,
   (errcode(ERRCODE_SYNTAX_ERROR),
    errmsg("parameter \"%s\" must be READ_ONLY, SHAREABLE, or READ_WRITE",
     defel->defname)));
 return 0;
}
