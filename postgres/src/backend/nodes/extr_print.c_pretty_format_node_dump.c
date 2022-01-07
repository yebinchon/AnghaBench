
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* data; } ;
typedef TYPE_1__ StringInfoData ;


 int INDENTSTOP ;
 int LINELEN ;
 int MAXINDENT ;
 int Min (int,int ) ;
 int appendStringInfo (TYPE_1__*,char*,char*) ;
 int initStringInfo (TYPE_1__*) ;

char *
pretty_format_node_dump(const char *dump)
{



 char line[78 + 1];
 StringInfoData str;
 int indentLev;
 int indentDist;
 int i;
 int j;

 initStringInfo(&str);
 indentLev = 0;
 indentDist = 0;
 i = 0;
 for (;;)
 {
  for (j = 0; j < indentDist; j++)
   line[j] = ' ';
  for (; j < 78 && dump[i] != '\0'; i++, j++)
  {
   line[j] = dump[i];
   switch (line[j])
   {
    case '}':
     if (j != indentDist)
     {

      line[j] = '\0';
      appendStringInfo(&str, "%s\n", line);
     }

     line[indentDist] = '}';
     line[indentDist + 1] = '\0';
     appendStringInfo(&str, "%s\n", line);

     if (indentLev > 0)
     {
      indentLev--;
      indentDist = Min(indentLev * 3, 60);
     }
     j = indentDist - 1;


     while (dump[i + 1] == ' ')
      i++;
     break;
    case ')':

     if (dump[i + 1] != ')')
     {
      line[j + 1] = '\0';
      appendStringInfo(&str, "%s\n", line);
      j = indentDist - 1;
      while (dump[i + 1] == ' ')
       i++;
     }
     break;
    case '{':

     if (j != indentDist)
     {
      line[j] = '\0';
      appendStringInfo(&str, "%s\n", line);
     }

     indentLev++;
     indentDist = Min(indentLev * 3, 60);
     for (j = 0; j < indentDist; j++)
      line[j] = ' ';
     line[j] = dump[i];
     break;
    case ':':

     if (j != indentDist)
     {
      line[j] = '\0';
      appendStringInfo(&str, "%s\n", line);
     }
     j = indentDist;
     line[j] = dump[i];
     break;
   }
  }
  line[j] = '\0';
  if (dump[i] == '\0')
   break;
  appendStringInfo(&str, "%s\n", line);
 }
 if (j > 0)
  appendStringInfo(&str, "%s\n", line);
 return str.data;



}
