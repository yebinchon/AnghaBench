
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int bio_dgram_data ;
struct TYPE_3__ {int * ptr; } ;
typedef TYPE_1__ BIO ;


 int * OPENSSL_zalloc (int) ;

__attribute__((used)) static int dgram_new(BIO *bi)
{
    bio_dgram_data *data = OPENSSL_zalloc(sizeof(*data));

    if (data == ((void*)0))
        return 0;
    bi->ptr = data;
    return 1;
}
