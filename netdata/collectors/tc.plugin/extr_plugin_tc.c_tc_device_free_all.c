
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int tc_device_free (scalar_t__) ;
 scalar_t__ tc_device_root ;

__attribute__((used)) static inline void tc_device_free_all()
{
    while(tc_device_root)
        tc_device_free(tc_device_root);
}
