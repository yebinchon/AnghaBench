
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name_id; } ;
typedef TYPE_1__ EVP_MD ;



int EVP_MD_number(const EVP_MD *md)
{
    return md->name_id;
}
