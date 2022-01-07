
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int md_size; } ;
typedef TYPE_1__ EVP_MD ;



int EVP_MD_meth_get_result_size(const EVP_MD *md)
{
    return md->md_size;
}
