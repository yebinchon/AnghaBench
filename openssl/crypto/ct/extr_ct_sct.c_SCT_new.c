
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int version; int entry_type; } ;
typedef TYPE_1__ SCT ;


 int CT_F_SCT_NEW ;
 int CT_LOG_ENTRY_TYPE_NOT_SET ;
 int CTerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 TYPE_1__* OPENSSL_zalloc (int) ;
 int SCT_VERSION_NOT_SET ;

SCT *SCT_new(void)
{
    SCT *sct = OPENSSL_zalloc(sizeof(*sct));

    if (sct == ((void*)0)) {
        CTerr(CT_F_SCT_NEW, ERR_R_MALLOC_FAILURE);
        return ((void*)0);
    }

    sct->entry_type = CT_LOG_ENTRY_TYPE_NOT_SET;
    sct->version = SCT_VERSION_NOT_SET;
    return sct;
}
