
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int calldata_t ;


 int calldata_get_bool (int const*,char const*,int*) ;

__attribute__((used)) static inline bool calldata_bool(const calldata_t *data, const char *name)
{
 bool val = 0;
 calldata_get_bool(data, name, &val);
 return val;
}
