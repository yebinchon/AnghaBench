
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* lib_name; } ;
typedef TYPE_1__ cipher_name_pair ;


 TYPE_1__* get_cipher_name_pair (char const*) ;

const char *
translate_cipher_name_from_openvpn(const char *cipher_name)
{
    const cipher_name_pair *pair = get_cipher_name_pair(cipher_name);

    if (((void*)0) == pair)
    {
        return cipher_name;
    }

    return pair->lib_name;
}
