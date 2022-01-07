
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptr ;
typedef int calldata_t ;


 int calldata_set_data (int *,char const*,void**,int) ;

__attribute__((used)) static inline void calldata_set_ptr(calldata_t *data, const char *name,
        void *ptr)
{
 calldata_set_data(data, name, &ptr, sizeof(ptr));
}
