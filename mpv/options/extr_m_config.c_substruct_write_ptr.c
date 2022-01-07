
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_dummy_ {int dummy; } ;
typedef int src ;


 int memcpy (void*,struct mp_dummy_**,int) ;

__attribute__((used)) static void substruct_write_ptr(void *ptr, void *val)
{
    struct mp_dummy_ *src = val;
    memcpy(ptr, &src, sizeof(src));
}
