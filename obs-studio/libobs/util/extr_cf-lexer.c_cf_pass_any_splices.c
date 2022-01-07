
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ cf_is_splice (char const*) ;
 scalar_t__ newline_size (char const*) ;

__attribute__((used)) static inline void cf_pass_any_splices(const char **parray)
{
 while (cf_is_splice(*parray))
  *parray += 1 + newline_size((*parray) + 1);
}
