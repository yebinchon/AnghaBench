
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int buf; } ;
typedef TYPE_1__ deparse_context ;
struct TYPE_8__ {int consttype; int consttypmod; int constvalue; scalar_t__ constisnull; } ;
typedef int StringInfo ;
typedef int Oid ;
typedef TYPE_2__ Const ;





 char* OidOutputFunctionCall (int ,int ) ;

 int appendStringInfo (int ,char*,char*) ;
 int appendStringInfoString (int ,char*) ;
 char* format_type_with_typemod (int,int ) ;
 int getTypeOutputInfo (int,int *,int*) ;
 int get_const_collation (TYPE_2__*,TYPE_1__*) ;
 int isdigit (unsigned char) ;
 int pfree (char*) ;
 int simple_quote_literal (int ,char*) ;
 int strcmp (char*,char*) ;
 int strcspn (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static void
get_const_expr(Const *constval, deparse_context *context, int showtype)
{
 StringInfo buf = context->buf;
 Oid typoutput;
 bool typIsVarlena;
 char *extval;
 bool needlabel = 0;

 if (constval->constisnull)
 {




  appendStringInfoString(buf, "NULL");
  if (showtype >= 0)
  {
   appendStringInfo(buf, "::%s",
        format_type_with_typemod(constval->consttype,
               constval->consttypmod));
   get_const_collation(constval, context);
  }
  return;
 }

 getTypeOutputInfo(constval->consttype,
       &typoutput, &typIsVarlena);

 extval = OidOutputFunctionCall(typoutput, constval->constvalue);

 switch (constval->consttype)
 {
  case 130:
   if (extval[0] != '-')
    appendStringInfoString(buf, extval);
   else
   {
    appendStringInfo(buf, "'%s'", extval);
    needlabel = 1;
   }
   break;

  case 129:






   if (isdigit((unsigned char) extval[0]) &&
    strcspn(extval, "eE.") != strlen(extval))
   {
    appendStringInfoString(buf, extval);
   }
   else
   {
    appendStringInfo(buf, "'%s'", extval);
    needlabel = 1;
   }
   break;

  case 131:
   if (strcmp(extval, "t") == 0)
    appendStringInfoString(buf, "true");
   else
    appendStringInfoString(buf, "false");
   break;

  default:
   simple_quote_literal(buf, extval);
   break;
 }

 pfree(extval);

 if (showtype < 0)
  return;
 switch (constval->consttype)
 {
  case 131:
  case 128:

   needlabel = 0;
   break;
  case 130:

   break;
  case 129:






   needlabel |= (constval->consttypmod >= 0);
   break;
  default:
   needlabel = 1;
   break;
 }
 if (needlabel || showtype > 0)
  appendStringInfo(buf, "::%s",
       format_type_with_typemod(constval->consttype,
              constval->consttypmod));

 get_const_collation(constval, context);
}
