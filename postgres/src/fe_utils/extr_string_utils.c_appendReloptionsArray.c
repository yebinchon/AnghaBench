
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PQExpBuffer ;


 int appendPQExpBuffer (int ,char*,char const*,int ) ;
 int appendPQExpBufferStr (int ,char*) ;
 int appendStringLiteral (int ,char*,int,int) ;
 int fmtId (char*) ;
 int free (char**) ;
 int parsePGArray (char const*,char***,int*) ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (int ,char*) ;

bool
appendReloptionsArray(PQExpBuffer buffer, const char *reloptions,
       const char *prefix, int encoding, bool std_strings)
{
 char **options;
 int noptions;
 int i;

 if (!parsePGArray(reloptions, &options, &noptions))
 {
  if (options)
   free(options);
  return 0;
 }

 for (i = 0; i < noptions; i++)
 {
  char *option = options[i];
  char *name;
  char *separator;
  char *value;





  name = option;
  separator = strchr(option, '=');
  if (separator)
  {
   *separator = '\0';
   value = separator + 1;
  }
  else
   value = "";

  if (i > 0)
   appendPQExpBufferStr(buffer, ", ");
  appendPQExpBuffer(buffer, "%s%s=", prefix, fmtId(name));
  if (strcmp(fmtId(value), value) == 0)
   appendPQExpBufferStr(buffer, value);
  else
   appendStringLiteral(buffer, value, encoding, std_strings);
 }

 if (options)
  free(options);

 return 1;
}
