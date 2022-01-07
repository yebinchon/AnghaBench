
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct serializer {int dummy; } ;


 int strlen (char const*) ;
 int write_data (struct serializer*,char const*,scalar_t__) ;
 int write_var (struct serializer*,scalar_t__) ;

__attribute__((used)) static bool write_str(struct serializer *s, const char *str)
{
 uint32_t size = (uint32_t)(str ? strlen(str) : 0);

 if (!write_var(s, size))
  return 0;
 if (size && !write_data(s, str, size))
  return 0;
 return 1;
}
