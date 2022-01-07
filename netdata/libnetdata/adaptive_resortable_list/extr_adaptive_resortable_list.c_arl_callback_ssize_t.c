
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ ssize_t ;


 scalar_t__ str2ll (char const*,int *) ;

inline void arl_callback_ssize_t(const char *name, uint32_t hash, const char *value, void *dst) {
    (void)name;
    (void)hash;

    register ssize_t *d = dst;
    *d = (ssize_t)str2ll(value, ((void*)0));

}
