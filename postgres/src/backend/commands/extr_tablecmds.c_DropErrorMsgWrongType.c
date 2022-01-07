
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dropmsgstrings {char kind; int drophint_msg; int nota_msg; } ;


 int Assert (int) ;
 int ERRCODE_WRONG_OBJECT_TYPE ;
 int ERROR ;
 int _ (int ) ;
 struct dropmsgstrings* dropmsgstringarray ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*,int ) ;
 int errmsg (int ,char const*) ;

__attribute__((used)) static void
DropErrorMsgWrongType(const char *relname, char wrongkind, char rightkind)
{
 const struct dropmsgstrings *rentry;
 const struct dropmsgstrings *wentry;

 for (rentry = dropmsgstringarray; rentry->kind != '\0'; rentry++)
  if (rentry->kind == rightkind)
   break;
 Assert(rentry->kind != '\0');

 for (wentry = dropmsgstringarray; wentry->kind != '\0'; wentry++)
  if (wentry->kind == wrongkind)
   break;


 ereport(ERROR,
   (errcode(ERRCODE_WRONG_OBJECT_TYPE),
    errmsg(rentry->nota_msg, relname),
    (wentry->kind != '\0') ? errhint("%s", _(wentry->drophint_msg)) : 0));
}
