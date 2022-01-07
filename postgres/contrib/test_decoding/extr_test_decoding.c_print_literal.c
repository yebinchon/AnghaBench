
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int Oid ;
 int SQL_STR_DOUBLE (char,int) ;

 int appendStringInfo (int ,char*,char*) ;
 int appendStringInfoChar (int ,char) ;
 int appendStringInfoString (int ,char*) ;
 int strcmp (char*,char*) ;

__attribute__((used)) static void
print_literal(StringInfo s, Oid typid, char *outputstr)
{
 const char *valptr;

 switch (typid)
 {
  case 133:
  case 132:
  case 131:
  case 129:
  case 135:
  case 134:
  case 130:

   appendStringInfoString(s, outputstr);
   break;

  case 137:
  case 128:
   appendStringInfo(s, "B'%s'", outputstr);
   break;

  case 136:
   if (strcmp(outputstr, "t") == 0)
    appendStringInfoString(s, "true");
   else
    appendStringInfoString(s, "false");
   break;

  default:
   appendStringInfoChar(s, '\'');
   for (valptr = outputstr; *valptr; valptr++)
   {
    char ch = *valptr;

    if (SQL_STR_DOUBLE(ch, 0))
     appendStringInfoChar(s, ch);
    appendStringInfoChar(s, ch);
   }
   appendStringInfoChar(s, '\'');
   break;
 }
}
