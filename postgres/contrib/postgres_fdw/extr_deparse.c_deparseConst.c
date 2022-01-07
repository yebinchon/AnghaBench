
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int buf; } ;
typedef TYPE_1__ deparse_expr_cxt ;
struct TYPE_6__ {int consttype; int consttypmod; int constvalue; scalar_t__ constisnull; } ;
typedef int StringInfo ;
typedef int Oid ;
typedef TYPE_2__ Const ;
 char* OidOutputFunctionCall (int ,int ) ;


 int appendStringInfo (int ,char*,char*) ;
 int appendStringInfoString (int ,char*) ;
 int deparseStringLiteral (int ,char*) ;
 char* deparse_type_name (int,int ) ;
 int getTypeOutputInfo (int,int *,int*) ;
 int pfree (char*) ;
 int strcmp (char*,char*) ;
 int strcspn (char*,char*) ;
 int strlen (char*) ;
 int strspn (char*,char*) ;

__attribute__((used)) static void
deparseConst(Const *node, deparse_expr_cxt *context, int showtype)
{
 StringInfo buf = context->buf;
 Oid typoutput;
 bool typIsVarlena;
 char *extval;
 bool isfloat = 0;
 bool needlabel;

 if (node->constisnull)
 {
  appendStringInfoString(buf, "NULL");
  if (showtype >= 0)
   appendStringInfo(buf, "::%s",
        deparse_type_name(node->consttype,
              node->consttypmod));
  return;
 }

 getTypeOutputInfo(node->consttype,
       &typoutput, &typIsVarlena);
 extval = OidOutputFunctionCall(typoutput, node->constvalue);

 switch (node->consttype)
 {
  case 134:
  case 133:
  case 132:
  case 130:
  case 136:
  case 135:
  case 131:
   {




    if (strspn(extval, "0123456789+-eE.") == strlen(extval))
    {
     if (extval[0] == '+' || extval[0] == '-')
      appendStringInfo(buf, "(%s)", extval);
     else
      appendStringInfoString(buf, extval);
     if (strcspn(extval, "eE.") != strlen(extval))
      isfloat = 1;
    }
    else
     appendStringInfo(buf, "'%s'", extval);
   }
   break;
  case 138:
  case 128:
   appendStringInfo(buf, "B'%s'", extval);
   break;
  case 137:
   if (strcmp(extval, "t") == 0)
    appendStringInfoString(buf, "true");
   else
    appendStringInfoString(buf, "false");
   break;
  default:
   deparseStringLiteral(buf, extval);
   break;
 }

 pfree(extval);

 if (showtype < 0)
  return;
 switch (node->consttype)
 {
  case 137:
  case 133:
  case 129:
   needlabel = 0;
   break;
  case 131:
   needlabel = !isfloat || (node->consttypmod >= 0);
   break;
  default:
   needlabel = 1;
   break;
 }
 if (needlabel || showtype > 0)
  appendStringInfo(buf, "::%s",
       deparse_type_name(node->consttype,
             node->consttypmod));
}
