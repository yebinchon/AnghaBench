
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_size ;
typedef int mp_result ;
typedef int mp_int ;


 int mp_int_read_cstring (int ,int ,char const*,int *) ;

mp_result
mp_int_read_string(mp_int z, mp_size radix, const char *str)
{
 return mp_int_read_cstring(z, radix, str, ((void*)0));
}
