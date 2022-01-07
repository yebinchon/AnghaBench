
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int indent; int str; } ;
typedef TYPE_1__ ExplainState ;


 int X_CLOSE_IMMEDIATE ;
 int X_CLOSING ;
 int X_NOWHITESPACE ;
 int appendStringInfoChar (int ,char const) ;
 int appendStringInfoCharMacro (int ,char) ;
 int appendStringInfoSpaces (int ,int) ;
 int appendStringInfoString (int ,char*) ;
 scalar_t__ strchr (char const*,char const) ;

__attribute__((used)) static void
ExplainXMLTag(const char *tagname, int flags, ExplainState *es)
{
 const char *s;
 const char *valid = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_.";

 if ((flags & X_NOWHITESPACE) == 0)
  appendStringInfoSpaces(es->str, 2 * es->indent);
 appendStringInfoCharMacro(es->str, '<');
 if ((flags & X_CLOSING) != 0)
  appendStringInfoCharMacro(es->str, '/');
 for (s = tagname; *s; s++)
  appendStringInfoChar(es->str, strchr(valid, *s) ? *s : '-');
 if ((flags & X_CLOSE_IMMEDIATE) != 0)
  appendStringInfoString(es->str, " /");
 appendStringInfoCharMacro(es->str, '>');
 if ((flags & X_NOWHITESPACE) == 0)
  appendStringInfoCharMacro(es->str, '\n');
}
