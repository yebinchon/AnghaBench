#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {unsigned int rounds; size_t key_bits; int tag_late; int enc; int /*<<< orphan*/  tag_len; int /*<<< orphan*/ * tag; int /*<<< orphan*/ * aad_len; int /*<<< orphan*/ ** aad; scalar_t__ aead; int /*<<< orphan*/  ciphertext_len; int /*<<< orphan*/ * ciphertext; int /*<<< orphan*/  plaintext_len; int /*<<< orphan*/ * plaintext; int /*<<< orphan*/  iv_len; int /*<<< orphan*/ * iv; int /*<<< orphan*/  key_len; int /*<<< orphan*/ * key; } ;
struct TYPE_4__ {TYPE_2__* data; } ;
typedef  TYPE_1__ EVP_TEST ;
typedef  TYPE_2__ CIPHER_DATA ;

/* Variables and functions */
 int AAD_NUM ; 
 int FUNC0 (char const*) ; 
 int FUNC1 (char const*,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 

__attribute__((used)) static int FUNC3(EVP_TEST *t, const char *keyword,
                             const char *value)
{
    CIPHER_DATA *cdat = t->data;
    int i;

    if (FUNC2(keyword, "Key") == 0)
        return FUNC1(value, &cdat->key, &cdat->key_len);
    if (FUNC2(keyword, "Rounds") == 0) {
        i = FUNC0(value);
        if (i < 0)
            return -1;
        cdat->rounds = (unsigned int)i;
        return 1;
    }
    if (FUNC2(keyword, "IV") == 0)
        return FUNC1(value, &cdat->iv, &cdat->iv_len);
    if (FUNC2(keyword, "Plaintext") == 0)
        return FUNC1(value, &cdat->plaintext, &cdat->plaintext_len);
    if (FUNC2(keyword, "Ciphertext") == 0)
        return FUNC1(value, &cdat->ciphertext, &cdat->ciphertext_len);
    if (FUNC2(keyword, "KeyBits") == 0) {
        i = FUNC0(value);
        if (i < 0)
            return -1;
        cdat->key_bits = (size_t)i;
        return 1;
    }
    if (cdat->aead) {
        if (FUNC2(keyword, "AAD") == 0) {
            for (i = 0; i < AAD_NUM; i++) {
                if (cdat->aad[i] == NULL)
                    return FUNC1(value, &cdat->aad[i], &cdat->aad_len[i]);
            }
            return -1;
        }
        if (FUNC2(keyword, "Tag") == 0)
            return FUNC1(value, &cdat->tag, &cdat->tag_len);
        if (FUNC2(keyword, "SetTagLate") == 0) {
            if (FUNC2(value, "TRUE") == 0)
                cdat->tag_late = 1;
            else if (FUNC2(value, "FALSE") == 0)
                cdat->tag_late = 0;
            else
                return -1;
            return 1;
        }
    }

    if (FUNC2(keyword, "Operation") == 0) {
        if (FUNC2(value, "ENCRYPT") == 0)
            cdat->enc = 1;
        else if (FUNC2(value, "DECRYPT") == 0)
            cdat->enc = 0;
        else
            return -1;
        return 1;
    }
    return 0;
}