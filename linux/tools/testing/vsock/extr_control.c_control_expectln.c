
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 char* control_readln () ;
 int exit (int ) ;
 int fprintf (int ,char*,char const*,char*) ;
 int free (char*) ;
 int stderr ;
 scalar_t__ strcmp (char const*,char*) ;

void control_expectln(const char *str)
{
 char *line;

 line = control_readln();
 if (strcmp(str, line) != 0) {
  fprintf(stderr, "expected \"%s\" on control socket, got \"%s\"\n",
   str, line);
  exit(EXIT_FAILURE);
 }

 free(line);
}
