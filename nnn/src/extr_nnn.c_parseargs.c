
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXEC_ARGS_MAX ;
 scalar_t__ ISBLANK (char) ;

__attribute__((used)) static int parseargs(char *line, char **argv)
{
 int count = 0;

 argv[count++] = line;

 while (*line) {
  if (ISBLANK(*line)) {
   *line++ = '\0';

   if (!*line)
    return count;

   argv[count++] = line;
   if (count == EXEC_ARGS_MAX)
    return -1;
  }

  ++line;
 }

 return count;
}
