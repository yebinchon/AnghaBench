
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cf_pass_any_splices (char const**) ;

__attribute__((used)) static inline bool cf_is_comment(const char *array)
{
 const char *offset = array;

 if (*offset++ == '/') {
  cf_pass_any_splices(&offset);
  return (*offset == '*' || *offset == '/');
 }

 return 0;
}
