
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int p_ptr ;
typedef int calldata_t ;


 int calldata_get_data (int const*,char const*,void*,int) ;

__attribute__((used)) static inline bool calldata_get_ptr(const calldata_t *data, const char *name,
        void *p_ptr)
{
 return calldata_get_data(data, name, p_ptr, sizeof(p_ptr));
}
