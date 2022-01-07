
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
typedef int calldata_t ;


 int calldata_set_data (int *,char const*,int*,int) ;

__attribute__((used)) static inline void calldata_set_bool(calldata_t *data, const char *name,
         bool val)
{
 calldata_set_data(data, name, &val, sizeof(val));
}
