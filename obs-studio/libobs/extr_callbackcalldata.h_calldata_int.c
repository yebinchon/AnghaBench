
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int calldata_t ;


 int calldata_get_int (int const*,char const*,long long*) ;

__attribute__((used)) static inline long long calldata_int(const calldata_t *data, const char *name)
{
 long long val = 0;
 calldata_get_int(data, name, &val);
 return val;
}
