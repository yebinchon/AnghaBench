
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int ossl_assert (int) ;

__attribute__((used)) static uint32_t evp_method_id(unsigned int operation_id, int name_id)
{
    if (!ossl_assert(name_id < (1 << 24) || operation_id < (1 << 8))
        || !ossl_assert(name_id > 0 && operation_id > 0))
        return 0;
    return ((name_id << 8) & 0xFFFFFF00) | (operation_id & 0x000000FF);
}
