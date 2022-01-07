
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int flags; int type; } ;
typedef TYPE_1__ RAND_DRBG ;


 int NID_aes_256_ctr ;
 int NID_sha1 ;
 int NID_sha256 ;
 int RAND_DRBG_FLAGS ;
 int RAND_DRBG_FLAG_CTR_NO_DF ;
 int RAND_DRBG_FLAG_HMAC ;
 int RAND_DRBG_FLAG_MASTER ;
 int RAND_DRBG_FLAG_PRIVATE ;
 int RAND_DRBG_FLAG_PUBLIC ;
 int RAND_DRBG_TYPE ;
 TYPE_1__* RAND_DRBG_get0_master () ;
 TYPE_1__* RAND_DRBG_get0_private () ;
 TYPE_1__* RAND_DRBG_get0_public () ;
 int RAND_DRBG_set_defaults (int,int) ;
 int RAND_DRBG_uninstantiate (TYPE_1__*) ;
 scalar_t__ TEST_int_eq (int ,int) ;
 scalar_t__ TEST_ptr (TYPE_1__*) ;
 scalar_t__ TEST_true (int ) ;

__attribute__((used)) static int test_set_defaults(void)
{
    RAND_DRBG *master = ((void*)0), *public = ((void*)0), *private = ((void*)0);


    return TEST_ptr(master = RAND_DRBG_get0_master())
           && TEST_ptr(public = RAND_DRBG_get0_public())
           && TEST_ptr(private = RAND_DRBG_get0_private())
           && TEST_int_eq(master->type, RAND_DRBG_TYPE)
           && TEST_int_eq(master->flags,
                          RAND_DRBG_FLAGS | RAND_DRBG_FLAG_MASTER)
           && TEST_int_eq(public->type, RAND_DRBG_TYPE)
           && TEST_int_eq(public->flags,
                          RAND_DRBG_FLAGS | RAND_DRBG_FLAG_PUBLIC)
           && TEST_int_eq(private->type, RAND_DRBG_TYPE)
           && TEST_int_eq(private->flags,
                          RAND_DRBG_FLAGS | RAND_DRBG_FLAG_PRIVATE)


           && TEST_true(RAND_DRBG_set_defaults(NID_sha256,
                                               RAND_DRBG_FLAG_MASTER))
           && TEST_true(RAND_DRBG_uninstantiate(master))
           && TEST_int_eq(master->type, NID_sha256)
           && TEST_int_eq(master->flags, RAND_DRBG_FLAG_MASTER)
           && TEST_int_eq(public->type, RAND_DRBG_TYPE)
           && TEST_int_eq(public->flags,
                          RAND_DRBG_FLAGS | RAND_DRBG_FLAG_PUBLIC)
           && TEST_int_eq(private->type, RAND_DRBG_TYPE)
           && TEST_int_eq(private->flags,
                          RAND_DRBG_FLAGS | RAND_DRBG_FLAG_PRIVATE)

           && TEST_true(RAND_DRBG_set_defaults(NID_sha256,
                        RAND_DRBG_FLAG_PRIVATE|RAND_DRBG_FLAG_HMAC))
           && TEST_true(RAND_DRBG_uninstantiate(private))
           && TEST_int_eq(master->type, NID_sha256)
           && TEST_int_eq(master->flags, RAND_DRBG_FLAG_MASTER)
           && TEST_int_eq(public->type, RAND_DRBG_TYPE)
           && TEST_int_eq(public->flags,
                          RAND_DRBG_FLAGS | RAND_DRBG_FLAG_PUBLIC)
           && TEST_int_eq(private->type, NID_sha256)
           && TEST_int_eq(private->flags,
                          RAND_DRBG_FLAG_PRIVATE | RAND_DRBG_FLAG_HMAC)

           && TEST_true(RAND_DRBG_set_defaults(NID_sha1,
                                               RAND_DRBG_FLAG_PUBLIC
                                               | RAND_DRBG_FLAG_HMAC))
           && TEST_true(RAND_DRBG_uninstantiate(public))
           && TEST_int_eq(master->type, NID_sha256)
           && TEST_int_eq(master->flags, RAND_DRBG_FLAG_MASTER)
           && TEST_int_eq(public->type, NID_sha1)
           && TEST_int_eq(public->flags,
                          RAND_DRBG_FLAG_PUBLIC | RAND_DRBG_FLAG_HMAC)
           && TEST_int_eq(private->type, NID_sha256)
           && TEST_int_eq(private->flags,
                          RAND_DRBG_FLAG_PRIVATE | RAND_DRBG_FLAG_HMAC)

           && TEST_true(RAND_DRBG_set_defaults(NID_sha256, 0))
           && TEST_true(RAND_DRBG_uninstantiate(public))
           && TEST_int_eq(public->type, NID_sha256)
           && TEST_int_eq(public->flags, RAND_DRBG_FLAG_PUBLIC)




           && TEST_true(RAND_DRBG_set_defaults(NID_aes_256_ctr,
                                               RAND_DRBG_FLAG_CTR_NO_DF))
           && TEST_true(RAND_DRBG_uninstantiate(master))
           && TEST_int_eq(master->type, NID_aes_256_ctr)
           && TEST_int_eq(master->flags,
                          RAND_DRBG_FLAG_MASTER|RAND_DRBG_FLAG_CTR_NO_DF)


           && TEST_true(RAND_DRBG_set_defaults(RAND_DRBG_TYPE,
                                               RAND_DRBG_FLAGS
                                               | RAND_DRBG_FLAG_MASTER
                                               | RAND_DRBG_FLAG_PUBLIC
                                               | RAND_DRBG_FLAG_PRIVATE))
           && TEST_true(RAND_DRBG_uninstantiate(master))
           && TEST_true(RAND_DRBG_uninstantiate(public))
           && TEST_true(RAND_DRBG_uninstantiate(private));
}
