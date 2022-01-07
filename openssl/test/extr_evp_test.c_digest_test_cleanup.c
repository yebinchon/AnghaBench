
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int fetched_digest; int output; int input; } ;
struct TYPE_4__ {TYPE_2__* data; } ;
typedef TYPE_1__ EVP_TEST ;
typedef TYPE_2__ DIGEST_DATA ;


 int EVP_MD_meth_free (int ) ;
 int OPENSSL_free (int ) ;
 int evp_test_buffer_free ;
 int sk_EVP_TEST_BUFFER_pop_free (int ,int ) ;

__attribute__((used)) static void digest_test_cleanup(EVP_TEST *t)
{
    DIGEST_DATA *mdat = t->data;

    sk_EVP_TEST_BUFFER_pop_free(mdat->input, evp_test_buffer_free);
    OPENSSL_free(mdat->output);
    EVP_MD_meth_free(mdat->fetched_digest);
}
