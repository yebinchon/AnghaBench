
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ key_len; int md5_encryption_key; int arc4ctx; } ;
typedef scalar_t__ HPDF_UINT ;
typedef TYPE_1__* HPDF_Encrypt ;


 int ARC4Init (int *,int ,scalar_t__) ;
 scalar_t__ HPDF_ENCRYPT_KEY_MAX ;
 int HPDF_PTRACE (char*) ;

void
HPDF_Encrypt_Reset (HPDF_Encrypt attr)
{
    HPDF_UINT key_len = (attr->key_len + 5 > HPDF_ENCRYPT_KEY_MAX) ?
                    HPDF_ENCRYPT_KEY_MAX : attr->key_len + 5;

    HPDF_PTRACE((" HPDF_Encrypt_Reset\n"));

    ARC4Init(&attr->arc4ctx, attr->md5_encryption_key, key_len);
}
