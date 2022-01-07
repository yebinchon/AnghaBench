
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* buf; } ;
typedef TYPE_1__ EVP_TEST_BUFFER ;


 int OPENSSL_free (TYPE_1__*) ;

__attribute__((used)) static void evp_test_buffer_free(EVP_TEST_BUFFER *db)
{
    if (db != ((void*)0)) {
        OPENSSL_free(db->buf);
        OPENSSL_free(db);
    }
}
