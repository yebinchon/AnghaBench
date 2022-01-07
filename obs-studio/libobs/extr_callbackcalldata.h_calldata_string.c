
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int calldata_t ;


 int calldata_get_string (int const*,char const*,char const**) ;

__attribute__((used)) static inline const char *calldata_string(const calldata_t *data,
       const char *name)
{
 const char *val = ((void*)0);
 calldata_get_string(data, name, &val);
 return val;
}
