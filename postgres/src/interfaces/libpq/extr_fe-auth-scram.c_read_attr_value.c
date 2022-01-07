
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PQExpBuffer ;


 int libpq_gettext (char*) ;
 int printfPQExpBuffer (int ,int ,char) ;

__attribute__((used)) static char *
read_attr_value(char **input, char attr, PQExpBuffer errorMessage)
{
 char *begin = *input;
 char *end;

 if (*begin != attr)
 {
  printfPQExpBuffer(errorMessage,
        libpq_gettext("malformed SCRAM message (attribute \"%c\" expected)\n"),
        attr);
  return ((void*)0);
 }
 begin++;

 if (*begin != '=')
 {
  printfPQExpBuffer(errorMessage,
        libpq_gettext("malformed SCRAM message (expected character \"=\" for attribute \"%c\")\n"),
        attr);
  return ((void*)0);
 }
 begin++;

 end = begin;
 while (*end && *end != ',')
  end++;

 if (*end)
 {
  *end = '\0';
  *input = end + 1;
 }
 else
  *input = end;

 return begin;
}
