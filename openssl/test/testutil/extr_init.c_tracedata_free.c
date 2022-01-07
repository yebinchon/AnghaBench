
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int bio; } ;
typedef TYPE_1__ tracedata ;


 int BIO_free_all (int ) ;
 int OPENSSL_free (TYPE_1__*) ;

__attribute__((used)) static void tracedata_free(tracedata *data)
{
    BIO_free_all(data->bio);
    OPENSSL_free(data);
}
