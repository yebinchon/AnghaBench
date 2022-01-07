
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct serializer {int dummy; } ;


 int bfree (char*) ;
 char* bmalloc (int) ;
 int read_data (struct serializer*,char*,int) ;
 int read_var (struct serializer*,int) ;

__attribute__((used)) static bool read_str(struct serializer *s, char **p_str)
{
 uint32_t size;
 char *str;

 if (!read_var(s, size))
  return 0;

 str = bmalloc(size + 1);
 if (size && !read_data(s, str, size)) {
  bfree(str);
  return 0;
 }

 str[size] = 0;
 *p_str = str;
 return 1;
}
