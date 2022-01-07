
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int multipart_buffer ;


 char* get_line (int *) ;
 int strcmp (char*,char*) ;

__attribute__((used)) static int find_boundary(multipart_buffer *self, char *boundary)
{
 char *line;


 while( (line = get_line(self)) )
 {

  if (!strcmp(line, boundary)) {
   return 1;
  }
 }


 return 0;
}
