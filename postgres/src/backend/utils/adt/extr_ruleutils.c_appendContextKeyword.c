
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int indentLevel; int buf; } ;
typedef TYPE_1__ deparse_context ;
typedef int StringInfo ;


 int Max (int,int ) ;
 int PRETTYINDENT_LIMIT ;
 int PRETTYINDENT_STD ;
 scalar_t__ PRETTY_INDENT (TYPE_1__*) ;
 int appendStringInfoChar (int ,char) ;
 int appendStringInfoSpaces (int ,int) ;
 int appendStringInfoString (int ,char const*) ;
 int removeStringInfoSpaces (int ) ;

__attribute__((used)) static void
appendContextKeyword(deparse_context *context, const char *str,
      int indentBefore, int indentAfter, int indentPlus)
{
 StringInfo buf = context->buf;

 if (PRETTY_INDENT(context))
 {
  int indentAmount;

  context->indentLevel += indentBefore;


  removeStringInfoSpaces(buf);

  appendStringInfoChar(buf, '\n');

  if (context->indentLevel < PRETTYINDENT_LIMIT)
   indentAmount = Max(context->indentLevel, 0) + indentPlus;
  else
  {
   indentAmount = PRETTYINDENT_LIMIT +
    (context->indentLevel - PRETTYINDENT_LIMIT) /
    (PRETTYINDENT_STD / 2);
   indentAmount %= PRETTYINDENT_LIMIT;

   indentAmount += indentPlus;
  }
  appendStringInfoSpaces(buf, indentAmount);

  appendStringInfoString(buf, str);

  context->indentLevel += indentAfter;
  if (context->indentLevel < 0)
   context->indentLevel = 0;
 }
 else
  appendStringInfoString(buf, str);
}
