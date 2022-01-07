
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {void* keyform; void* certform; struct TYPE_5__* prev; struct TYPE_5__* next; } ;
typedef TYPE_1__ SSL_EXCERT ;


 void* FORMAT_PEM ;
 TYPE_1__* app_malloc (int,char*) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static int ssl_excert_prepend(SSL_EXCERT **pexc)
{
    SSL_EXCERT *exc = app_malloc(sizeof(*exc), "prepend cert");

    memset(exc, 0, sizeof(*exc));

    exc->next = *pexc;
    *pexc = exc;

    if (exc->next) {
        exc->certform = exc->next->certform;
        exc->keyform = exc->next->keyform;
        exc->next->prev = exc;
    } else {
        exc->certform = FORMAT_PEM;
        exc->keyform = FORMAT_PEM;
    }
    return 1;

}
