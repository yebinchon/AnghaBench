
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int calldata_t ;


 int calldata_get_ptr (int const*,char const*,void**) ;

__attribute__((used)) static inline void *calldata_ptr(const calldata_t *data, const char *name)
{
 void *val = ((void*)0);
 calldata_get_ptr(data, name, &val);
 return val;
}
