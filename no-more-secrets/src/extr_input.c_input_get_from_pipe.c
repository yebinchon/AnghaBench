
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STDIN_FILENO ;
 int error_log (char*) ;
 int input_get (unsigned char**,int *) ;
 scalar_t__ isatty (int ) ;

int input_get_from_pipe(unsigned char** dest)
{
 int r;

 if (isatty(STDIN_FILENO))
 {
  error_log("Input data from a piped or redirected source is required.");
  return -1;
 }

 r = input_get(dest, ((void*)0));
 if (r < 0)
 {
  error_log("Could not get input.");
  return -1;
 }
 if (r == 0)
 {
  error_log("No input provided.");
  return -1;
 }

 return r;
}
