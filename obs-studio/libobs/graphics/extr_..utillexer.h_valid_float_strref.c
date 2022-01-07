
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strref {int len; int array; } ;


 int valid_float_str (int ,int ) ;

__attribute__((used)) static inline bool valid_float_strref(const struct strref *str)
{
 return valid_float_str(str->array, str->len);
}
