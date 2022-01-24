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
typedef  int /*<<< orphan*/  iv ;
typedef  int /*<<< orphan*/  cbc_out ;
typedef  int /*<<< orphan*/  cbc_in ;
typedef  int BF_LONG ;
typedef  int /*<<< orphan*/  BF_KEY ;

/* Variables and functions */
 int /*<<< orphan*/  BF_DECRYPT ; 
 int /*<<< orphan*/  BF_ENCRYPT ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,unsigned char*,int,int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int,scalar_t__,int) ; 
 scalar_t__ cbc_data ; 
 int /*<<< orphan*/  cbc_iv ; 
 int /*<<< orphan*/  cbc_key ; 
 scalar_t__ cbc_ok ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (scalar_t__) ; 

__attribute__((used)) static int FUNC6(void)
{
    unsigned char cbc_in[40], cbc_out[40], iv[8];
    int ret = 1;
    BF_KEY key;
    BF_LONG len;

    len = FUNC5(cbc_data) + 1;

    FUNC1(&key, 16, cbc_key);
    FUNC4(cbc_in, 0, sizeof(cbc_in));
    FUNC4(cbc_out, 0, sizeof(cbc_out));
    FUNC3(iv, cbc_iv, sizeof(iv));
    FUNC0((unsigned char *)cbc_data, cbc_out, len,
                   &key, iv, BF_ENCRYPT);
    if (!FUNC2(cbc_out, 32, cbc_ok, 32))
        ret = 0;

    FUNC3(iv, cbc_iv, 8);
    FUNC0(cbc_out, cbc_in, len, &key, iv, BF_DECRYPT);
    if (!FUNC2(cbc_in, len, cbc_data, FUNC5(cbc_data) + 1))
        ret = 0;

    return ret;
}