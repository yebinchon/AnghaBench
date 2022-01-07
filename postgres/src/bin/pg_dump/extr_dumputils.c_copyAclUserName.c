
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PQExpBuffer ;


 int appendPQExpBufferChar (int ,int ) ;
 int resetPQExpBuffer (int ) ;

__attribute__((used)) static char *
copyAclUserName(PQExpBuffer output, char *input)
{
 resetPQExpBuffer(output);

 while (*input && *input != '=')
 {



  if (*input != '"')
   appendPQExpBufferChar(output, *input++);
  else
  {

   input++;

   while (!(*input == '"' && *(input + 1) != '"'))
   {
    if (*input == '\0')
     return input;





    if (*input == '"' && *(input + 1) == '"')
     input++;
    appendPQExpBufferChar(output, *input++);
   }
   input++;
  }
 }
 return input;
}
