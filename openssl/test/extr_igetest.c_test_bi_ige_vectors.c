
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bi_ige_test {int length; scalar_t__ encrypt; int keysize; int in; int iv; int key2; int key1; int out; } ;
typedef int AES_KEY ;


 scalar_t__ AES_ENCRYPT ;
 int AES_bi_ige_encrypt (int ,unsigned char*,int,int *,int *,int ,scalar_t__) ;
 int AES_set_decrypt_key (int ,int,int *) ;
 int AES_set_encrypt_key (int ,int,int *) ;
 int MAX_VECTOR_SIZE ;
 int TEST_int_le (int,int) ;
 int TEST_mem_eq (int ,int,unsigned char*,int) ;
 struct bi_ige_test* bi_ige_test_vectors ;
 int test_output_memory (char*,int ,int) ;

__attribute__((used)) static int test_bi_ige_vectors(int n)
{
    const struct bi_ige_test *const v = &bi_ige_test_vectors[n];
    AES_KEY key1;
    AES_KEY key2;
    unsigned char buf[MAX_VECTOR_SIZE];

        if (!TEST_int_le(v->length, MAX_VECTOR_SIZE))
            return 0;

    if (v->encrypt == AES_ENCRYPT) {
        AES_set_encrypt_key(v->key1, 8 * v->keysize, &key1);
        AES_set_encrypt_key(v->key2, 8 * v->keysize, &key2);
    } else {
        AES_set_decrypt_key(v->key1, 8 * v->keysize, &key1);
        AES_set_decrypt_key(v->key2, 8 * v->keysize, &key2);
    }

    AES_bi_ige_encrypt(v->in, buf, v->length, &key1, &key2, v->iv,
                       v->encrypt);

    if (!TEST_mem_eq(v->out, v->length, buf, v->length)) {
        test_output_memory("key 1", v->key1, sizeof(v->key1));
        test_output_memory("key 2", v->key2, sizeof(v->key2));
        test_output_memory("iv", v->iv, sizeof(v->iv));
        test_output_memory("in", v->in, v->length);
        return 0;
    }

    return 1;
}
