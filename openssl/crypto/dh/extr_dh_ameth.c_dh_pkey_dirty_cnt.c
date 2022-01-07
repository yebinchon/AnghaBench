
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* dh; } ;
struct TYPE_7__ {TYPE_2__ pkey; } ;
struct TYPE_5__ {size_t dirty_cnt; } ;
typedef TYPE_3__ EVP_PKEY ;



__attribute__((used)) static size_t dh_pkey_dirty_cnt(const EVP_PKEY *pkey)
{
    return pkey->pkey.dh->dirty_cnt;
}
