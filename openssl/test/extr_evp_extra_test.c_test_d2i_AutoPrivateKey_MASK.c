#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {unsigned char* kder; size_t size; int evptype; } ;
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  TYPE_1__ APK_DATA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char const*,unsigned char const*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,unsigned char const**,size_t) ; 
 TYPE_1__* keydata ; 

__attribute__((used)) static int FUNC6(int i)
{
    int ret = 0;
    const unsigned char *p;
    EVP_PKEY *pkey = NULL;
    const APK_DATA *ak = &keydata[i];
    const unsigned char *input = ak->kder;
    size_t input_len = ak->size;
    int expected_id = ak->evptype;

    p = input;
    if (!FUNC3(pkey = FUNC5(NULL, &p, input_len))
            || !FUNC4(p, input + input_len)
            || !FUNC2(FUNC1(pkey), expected_id))
        goto done;

    ret = 1;

 done:
    FUNC0(pkey);
    return ret;
}