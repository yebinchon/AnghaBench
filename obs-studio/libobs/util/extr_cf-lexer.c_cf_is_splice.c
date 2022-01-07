
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ is_newline (char const) ;

__attribute__((used)) static inline bool cf_is_splice(const char *array)
{
 return (*array == '\\' && is_newline(array[1]));
}
