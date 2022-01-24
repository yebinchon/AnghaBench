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
struct ige_test {int length; scalar_t__ encrypt; unsigned char* key; unsigned char* iv; unsigned char* in; int /*<<< orphan*/  out; } ;
typedef  int /*<<< orphan*/  iv ;
typedef  int /*<<< orphan*/  AES_KEY ;

/* Variables and functions */
 int AES_BLOCK_SIZE ; 
 scalar_t__ AES_ENCRYPT ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,unsigned char*,int,int /*<<< orphan*/ *,unsigned char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int,int /*<<< orphan*/ *) ; 
 int MAX_VECTOR_SIZE ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,unsigned char*,int) ; 
 struct ige_test* ige_test_vectors ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,unsigned char*,int) ; 

__attribute__((used)) static int FUNC8(int n)
{
    const struct ige_test *const v = &ige_test_vectors[n];
    AES_KEY key;
    unsigned char buf[MAX_VECTOR_SIZE];
    unsigned char iv[AES_BLOCK_SIZE * 2];
    int testresult = 1;

    if (!FUNC4(v->length, MAX_VECTOR_SIZE))
        return 0;

    if (v->encrypt == AES_ENCRYPT)
        FUNC2(v->key, 8 * sizeof(v->key), &key);
    else
        FUNC1(v->key, 8 * sizeof(v->key), &key);
    FUNC6(iv, v->iv, sizeof(iv));
    FUNC0(v->in, buf, v->length, &key, iv, v->encrypt);

    if (!FUNC5(v->out, v->length, buf, v->length)) {
        FUNC3("IGE test vector %d failed", n);
        FUNC7("key", v->key, sizeof(v->key));
        FUNC7("iv", v->iv, sizeof(v->iv));
        FUNC7("in", v->in, v->length);
        testresult = 0;
    }

    /* try with in == out */
    FUNC6(iv, v->iv, sizeof(iv));
    FUNC6(buf, v->in, v->length);
    FUNC0(buf, buf, v->length, &key, iv, v->encrypt);

    if (!FUNC5(v->out, v->length, buf, v->length)) {
        FUNC3("IGE test vector %d failed (with in == out)", n);
        FUNC7("key", v->key, sizeof(v->key));
        FUNC7("iv", v->iv, sizeof(v->iv));
        FUNC7("in", v->in, v->length);
        testresult = 0;
    }

    return testresult;
}