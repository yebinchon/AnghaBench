
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 int stderr ;

void
syntax_error(const char *source, int lineno,
    const char *line, const char *command,
    const char *msg, const char *more, int column)
{
 fprintf(stderr, "%s:%d: %s", source, lineno, msg);
 if (more != ((void*)0))
  fprintf(stderr, " (%s)", more);
 if (column >= 0 && line == ((void*)0))
  fprintf(stderr, " at column %d", column + 1);
 if (command != ((void*)0))
  fprintf(stderr, " in command \"%s\"", command);
 fprintf(stderr, "\n");
 if (line != ((void*)0))
 {
  fprintf(stderr, "%s\n", line);
  if (column >= 0)
  {
   int i;

   for (i = 0; i < column; i++)
    fprintf(stderr, " ");
   fprintf(stderr, "^ error found here\n");
  }
 }
 exit(1);
}
