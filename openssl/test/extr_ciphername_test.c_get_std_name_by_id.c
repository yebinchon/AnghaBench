
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int id; char const* name; } ;


 size_t OSSL_NELEM (TYPE_1__*) ;
 TYPE_1__* cipher_names ;

__attribute__((used)) static const char *get_std_name_by_id(int id)
{
    size_t i;

    for (i = 0; i < OSSL_NELEM(cipher_names); i++)
        if (cipher_names[i].id == id)
            return cipher_names[i].name;

    return ((void*)0);
}
