
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lib_name; int openvpn_name; } ;
typedef TYPE_1__ cipher_name_pair ;


 TYPE_1__* cipher_name_translation_table ;
 size_t cipher_name_translation_table_count ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static const cipher_name_pair *
get_cipher_name_pair(const char *cipher_name)
{
    const cipher_name_pair *pair;
    size_t i = 0;


    for (; i < cipher_name_translation_table_count; i++)
    {
        pair = &cipher_name_translation_table[i];
        if (0 == strcmp(cipher_name, pair->openvpn_name)
            || 0 == strcmp(cipher_name, pair->lib_name))
        {
            return pair;
        }
    }


    return ((void*)0);
}
