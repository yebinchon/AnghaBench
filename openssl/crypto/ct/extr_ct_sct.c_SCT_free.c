
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* sct; struct TYPE_4__* sig; struct TYPE_4__* ext; struct TYPE_4__* log_id; } ;
typedef TYPE_1__ SCT ;


 int OPENSSL_free (TYPE_1__*) ;

void SCT_free(SCT *sct)
{
    if (sct == ((void*)0))
        return;

    OPENSSL_free(sct->log_id);
    OPENSSL_free(sct->ext);
    OPENSSL_free(sct->sig);
    OPENSSL_free(sct->sct);
    OPENSSL_free(sct);
}
