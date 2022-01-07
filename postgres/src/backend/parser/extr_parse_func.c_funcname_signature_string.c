
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char const* data; } ;
typedef TYPE_1__ StringInfoData ;
typedef int Oid ;
typedef int ListCell ;
typedef int List ;


 int appendStringInfo (TYPE_1__*,char*,char const*) ;
 int appendStringInfoChar (TYPE_1__*,char) ;
 int appendStringInfoString (TYPE_1__*,char*) ;
 char* format_type_be (int const) ;
 int initStringInfo (TYPE_1__*) ;
 scalar_t__ lfirst (int *) ;
 int * list_head (int *) ;
 int list_length (int *) ;
 int * lnext (int *,int *) ;

const char *
funcname_signature_string(const char *funcname, int nargs,
        List *argnames, const Oid *argtypes)
{
 StringInfoData argbuf;
 int numposargs;
 ListCell *lc;
 int i;

 initStringInfo(&argbuf);

 appendStringInfo(&argbuf, "%s(", funcname);

 numposargs = nargs - list_length(argnames);
 lc = list_head(argnames);

 for (i = 0; i < nargs; i++)
 {
  if (i)
   appendStringInfoString(&argbuf, ", ");
  if (i >= numposargs)
  {
   appendStringInfo(&argbuf, "%s => ", (char *) lfirst(lc));
   lc = lnext(argnames, lc);
  }
  appendStringInfoString(&argbuf, format_type_be(argtypes[i]));
 }

 appendStringInfoChar(&argbuf, ')');

 return argbuf.data;
}
