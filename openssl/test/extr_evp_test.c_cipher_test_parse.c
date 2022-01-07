
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {unsigned int rounds; size_t key_bits; int tag_late; int enc; int tag_len; int * tag; int * aad_len; int ** aad; scalar_t__ aead; int ciphertext_len; int * ciphertext; int plaintext_len; int * plaintext; int iv_len; int * iv; int key_len; int * key; } ;
struct TYPE_4__ {TYPE_2__* data; } ;
typedef TYPE_1__ EVP_TEST ;
typedef TYPE_2__ CIPHER_DATA ;


 int AAD_NUM ;
 int atoi (char const*) ;
 int parse_bin (char const*,int **,int *) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int cipher_test_parse(EVP_TEST *t, const char *keyword,
                             const char *value)
{
    CIPHER_DATA *cdat = t->data;
    int i;

    if (strcmp(keyword, "Key") == 0)
        return parse_bin(value, &cdat->key, &cdat->key_len);
    if (strcmp(keyword, "Rounds") == 0) {
        i = atoi(value);
        if (i < 0)
            return -1;
        cdat->rounds = (unsigned int)i;
        return 1;
    }
    if (strcmp(keyword, "IV") == 0)
        return parse_bin(value, &cdat->iv, &cdat->iv_len);
    if (strcmp(keyword, "Plaintext") == 0)
        return parse_bin(value, &cdat->plaintext, &cdat->plaintext_len);
    if (strcmp(keyword, "Ciphertext") == 0)
        return parse_bin(value, &cdat->ciphertext, &cdat->ciphertext_len);
    if (strcmp(keyword, "KeyBits") == 0) {
        i = atoi(value);
        if (i < 0)
            return -1;
        cdat->key_bits = (size_t)i;
        return 1;
    }
    if (cdat->aead) {
        if (strcmp(keyword, "AAD") == 0) {
            for (i = 0; i < AAD_NUM; i++) {
                if (cdat->aad[i] == ((void*)0))
                    return parse_bin(value, &cdat->aad[i], &cdat->aad_len[i]);
            }
            return -1;
        }
        if (strcmp(keyword, "Tag") == 0)
            return parse_bin(value, &cdat->tag, &cdat->tag_len);
        if (strcmp(keyword, "SetTagLate") == 0) {
            if (strcmp(value, "TRUE") == 0)
                cdat->tag_late = 1;
            else if (strcmp(value, "FALSE") == 0)
                cdat->tag_late = 0;
            else
                return -1;
            return 1;
        }
    }

    if (strcmp(keyword, "Operation") == 0) {
        if (strcmp(value, "ENCRYPT") == 0)
            cdat->enc = 1;
        else if (strcmp(value, "DECRYPT") == 0)
            cdat->enc = 0;
        else
            return -1;
        return 1;
    }
    return 0;
}
