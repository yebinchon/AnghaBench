
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* data; } ;
typedef TYPE_1__* PQExpBuffer ;


 char* strchr (char const*,char) ;

__attribute__((used)) static int
count_lines_in_buf(PQExpBuffer buf)
{
 int lineno = 0;
 const char *lines = buf->data;

 while (*lines != '\0')
 {
  lineno++;

  lines = strchr(lines, '\n');
  if (!lines)
   break;
  lines++;
 }

 return lineno;
}
