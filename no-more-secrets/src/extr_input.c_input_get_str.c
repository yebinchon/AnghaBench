
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int error_log (char*) ;
 int free (unsigned char*) ;
 int input_get (unsigned char**,char*) ;
 scalar_t__ isascii (unsigned char) ;
 char* malloc (int) ;
 int memset (char*,int ,int) ;

int input_get_str(char** dest, char *prompt)
{
 int r, i, input_len;
 unsigned char *input;

 r = input_get(&input, prompt);
 if (r < 0)
 {
  error_log("Could not get input.");
  return -1;
 }

 if (r > 0)
 {
  if (input[r - 1] == '\n')
  {
   --r;
   if (r > 0 && input[r - 1] == '\r')
   {
    --r;
   }
  }
 }

 if (r == 0)
 {
  error_log("No input provided.");
  return -1;
 }

 input_len = r;

 *dest = malloc(input_len + 1);
 if (*dest == ((void*)0))
 {
  error_log("Memory allocation error.");
  return -1;
 }

 memset(*dest, 0, input_len + 1);

 for (i = 0; i < input_len; ++i)
 {
  if (isascii(input[i]))
  {
   (*dest)[i] = input[i];
  }
  else
  {
   error_log("Input contains non-ascii characters.");
   return -1;
  }
 }

 free(input);

 return input_len;
}
