
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int key_len; int permission; int user_passwd; int owner_passwd; int mode; } ;
typedef int HPDF_Encrypt_Rec ;
typedef TYPE_1__* HPDF_Encrypt ;


 int HPDF_ENABLE_COPY ;
 int HPDF_ENABLE_EDIT ;
 int HPDF_ENABLE_EDIT_ALL ;
 int HPDF_ENABLE_PRINT ;
 int HPDF_ENCRYPT_R2 ;
 int HPDF_MemCpy (int ,int ,int ) ;
 int HPDF_MemSet (TYPE_1__*,int ,int) ;
 int HPDF_PADDING_STRING ;
 int HPDF_PASSWD_LEN ;
 int HPDF_PERMISSION_PAD ;

void
HPDF_Encrypt_Init (HPDF_Encrypt attr)
{
    HPDF_MemSet (attr, 0, sizeof(HPDF_Encrypt_Rec));
    attr->mode = HPDF_ENCRYPT_R2;
    attr->key_len = 5;
    HPDF_MemCpy (attr->owner_passwd, HPDF_PADDING_STRING, HPDF_PASSWD_LEN);
    HPDF_MemCpy (attr->user_passwd, HPDF_PADDING_STRING, HPDF_PASSWD_LEN);
    attr->permission = HPDF_ENABLE_PRINT | HPDF_ENABLE_EDIT_ALL |
        HPDF_ENABLE_COPY | HPDF_ENABLE_EDIT | HPDF_PERMISSION_PAD;
}
