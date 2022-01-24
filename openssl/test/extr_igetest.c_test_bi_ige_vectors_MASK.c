#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct bi_ige_test {int length; scalar_t__ encrypt; int keysize; int /*<<< orphan*/  in; int /*<<< orphan*/  iv; int /*<<< orphan*/  key2; int /*<<< orphan*/  key1; int /*<<< orphan*/  out; } ;
typedef  int /*<<< orphan*/  AES_KEY ;

/* Variables and functions */
 scalar_t__ AES_ENCRYPT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int MAX_VECTOR_SIZE ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,unsigned char*,int) ; 
 struct bi_ige_test* bi_ige_test_vectors ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(int n)
{
    const struct bi_ige_test *const v = &bi_ige_test_vectors[n];
    AES_KEY key1;
    AES_KEY key2;
    unsigned char buf[MAX_VECTOR_SIZE];

        if (!FUNC3(v->length, MAX_VECTOR_SIZE))
            return 0;

    if (v->encrypt == AES_ENCRYPT) {
        FUNC2(v->key1, 8 * v->keysize, &key1);
        FUNC2(v->key2, 8 * v->keysize, &key2);
    } else {
        FUNC1(v->key1, 8 * v->keysize, &key1);
        FUNC1(v->key2, 8 * v->keysize, &key2);
    }

    FUNC0(v->in, buf, v->length, &key1, &key2, v->iv,
                       v->encrypt);

    if (!FUNC4(v->out, v->length, buf, v->length)) {
        FUNC5("key 1", v->key1, sizeof(v->key1));
        FUNC5("key 2", v->key2, sizeof(v->key2));
        FUNC5("iv", v->iv, sizeof(v->iv));
        FUNC5("in", v->in, v->length);
        return 0;
    }

    return 1;
}