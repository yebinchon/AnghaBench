
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t length; scalar_t__ data; } ;
typedef TYPE_1__ BUF_MEM ;


 int BUF_MEM_grow (TYPE_1__*,size_t) ;
 TYPE_1__* BUF_MEM_new () ;
 int ERR_LIB_EVP ;
 int ERR_R_MALLOC_FAILURE ;
 int ERR_raise (int ,int ) ;
 int memcpy (scalar_t__,void*,size_t) ;

__attribute__((used)) static int collect(BUF_MEM **collector, void *data, size_t datalen)
{
    size_t i;

    if (*collector == ((void*)0))
        *collector = BUF_MEM_new();
    if (*collector == ((void*)0)) {
        ERR_raise(ERR_LIB_EVP, ERR_R_MALLOC_FAILURE);
        return 0;
    }

    if (data != ((void*)0) && datalen > 0) {
        i = (*collector)->length;

        if (!BUF_MEM_grow(*collector, i + datalen))
            return 0;
        memcpy((*collector)->data + i, data, datalen);
    }
    return 1;
}
