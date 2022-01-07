
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* data; } ;
typedef TYPE_1__ StringInfoData ;


 int LINELEN ;
 int appendStringInfo (TYPE_1__*,char*,char*) ;
 int initStringInfo (TYPE_1__*) ;

char *
format_node_dump(const char *dump)
{

 char line[78 + 1];
 StringInfoData str;
 int i;
 int j;
 int k;

 initStringInfo(&str);
 i = 0;
 for (;;)
 {
  for (j = 0; j < 78 && dump[i] != '\0'; i++, j++)
   line[j] = dump[i];
  if (dump[i] == '\0')
   break;
  if (dump[i] == ' ')
  {

   i++;
  }
  else
  {
   for (k = j - 1; k > 0; k--)
    if (line[k] == ' ')
     break;
   if (k > 0)
   {

    i -= (j - k - 1);
    j = k;
   }
  }
  line[j] = '\0';
  appendStringInfo(&str, "%s\n", line);
 }
 if (j > 0)
 {
  line[j] = '\0';
  appendStringInfo(&str, "%s\n", line);
 }
 return str.data;

}
