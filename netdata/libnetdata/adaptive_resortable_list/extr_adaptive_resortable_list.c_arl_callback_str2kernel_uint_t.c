
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int kernel_uint_t ;


 int str2kernel_uint_t (char const*) ;

inline void arl_callback_str2kernel_uint_t(const char *name, uint32_t hash, const char *value, void *dst) {
    (void)name;
    (void)hash;

    register kernel_uint_t *d = dst;
    *d = str2kernel_uint_t(value);

}
