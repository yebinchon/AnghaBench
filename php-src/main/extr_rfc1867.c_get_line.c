
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int multipart_buffer ;


 int fill_buffer (int *) ;
 char* next_line (int *) ;

__attribute__((used)) static char *get_line(multipart_buffer *self)
{
 char* ptr = next_line(self);

 if (!ptr) {
  fill_buffer(self);
  ptr = next_line(self);
 }

 return ptr;
}
