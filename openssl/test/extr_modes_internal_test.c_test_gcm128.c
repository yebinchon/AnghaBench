
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int block128_f ;
struct TYPE_3__ {int size; int * data; } ;
struct TYPE_4__ {TYPE_1__ T; TYPE_1__ C; TYPE_1__ P; TYPE_1__ A; TYPE_1__ IV; TYPE_1__ K; } ;
typedef TYPE_1__ SIZED_DATA ;
typedef int GCM128_CONTEXT ;
typedef int AES_KEY ;


 scalar_t__ AES_encrypt ;
 int AES_set_encrypt_key (int *,int,int *) ;
 int CRYPTO_gcm128_aad (int *,int *,int) ;
 int CRYPTO_gcm128_decrypt (int *,int *,unsigned char*,int) ;
 int CRYPTO_gcm128_encrypt (int *,int *,unsigned char*,int) ;
 int CRYPTO_gcm128_finish (int *,int *,int) ;
 int CRYPTO_gcm128_init (int *,int *,int ) ;
 int CRYPTO_gcm128_setiv (int *,int *,int) ;
 int TEST_false (int ) ;
 int TEST_mem_eq (unsigned char*,int,int *,int) ;
 TYPE_2__* gcm128_vectors ;
 int memset (unsigned char*,int ,int) ;

__attribute__((used)) static int test_gcm128(int idx)
{
    unsigned char out[512];
    SIZED_DATA K = gcm128_vectors[idx].K;
    SIZED_DATA IV = gcm128_vectors[idx].IV;
    SIZED_DATA A = gcm128_vectors[idx].A;
    SIZED_DATA P = gcm128_vectors[idx].P;
    SIZED_DATA C = gcm128_vectors[idx].C;
    SIZED_DATA T = gcm128_vectors[idx].T;
    GCM128_CONTEXT ctx;
    AES_KEY key;


    if (A.size == 1)
        A.data = ((void*)0);
    if (P.size == 1)
        P.data = ((void*)0);
    if (C.size == 1)
        C.data = ((void*)0);

    AES_set_encrypt_key(K.data, K.size * 8, &key);

    CRYPTO_gcm128_init(&ctx, &key, (block128_f)AES_encrypt);
    CRYPTO_gcm128_setiv(&ctx, IV.data, IV.size);
    memset(out, 0, P.size);
    if (A.data != ((void*)0))
        CRYPTO_gcm128_aad(&ctx, A.data, A.size);
    if (P.data != ((void*)0))
        CRYPTO_gcm128_encrypt( &ctx, P.data, out, P.size);
    if (!TEST_false(CRYPTO_gcm128_finish(&ctx, T.data, 16))
            || (C.data != ((void*)0)
                    && !TEST_mem_eq(out, P.size, C.data, P.size)))
        return 0;

    CRYPTO_gcm128_setiv(&ctx, IV.data, IV.size);
    memset(out, 0, P.size);
    if (A.data != ((void*)0))
        CRYPTO_gcm128_aad(&ctx, A.data, A.size);
    if (C.data != ((void*)0))
        CRYPTO_gcm128_decrypt(&ctx, C.data, out, P.size);
    if (!TEST_false(CRYPTO_gcm128_finish(&ctx, T.data, 16))
            || (P.data != ((void*)0)
                    && !TEST_mem_eq(out, P.size, P.data, P.size)))
        return 0;

    return 1;
}
