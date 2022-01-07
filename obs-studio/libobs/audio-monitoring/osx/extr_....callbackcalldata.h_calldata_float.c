
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int calldata_t ;


 int calldata_get_float (int const*,char const*,double*) ;

__attribute__((used)) static inline double calldata_float(const calldata_t *data, const char *name)
{
 double val = 0.0;
 calldata_get_float(data, name, &val);
 return val;
}
