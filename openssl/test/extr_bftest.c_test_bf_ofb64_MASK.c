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
typedef  int BF_LONG ;
typedef  int /*<<< orphan*/  BF_KEY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,unsigned char*,int,int /*<<< orphan*/ *,unsigned char*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * cbc_data ; 
 int /*<<< orphan*/  cbc_iv ; 
 int /*<<< orphan*/  cbc_key ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * ofb64_ok ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(void)
{
    unsigned char cbc_in[40], cbc_out[40], iv[8];
    int n, ret = 1;
    BF_KEY key;
    BF_LONG len;

    len = FUNC5(cbc_data) + 1;

    FUNC1(&key, 16, cbc_key);
    FUNC4(cbc_in, 0, 40);
    FUNC4(cbc_out, 0, 40);
    FUNC3(iv, cbc_iv, 8);
    n = 0;
    FUNC0((unsigned char *)cbc_data, cbc_out, (long)13, &key, iv,
                     &n);
    FUNC0((unsigned char *)&(cbc_data[13]), &(cbc_out[13]),
                     len - 13, &key, iv, &n);
    if (!FUNC2(cbc_out, (int)len, ofb64_ok, (int)len))
        ret = 0;

    n = 0;
    FUNC3(iv, cbc_iv, 8);
    FUNC0(cbc_out, cbc_in, 17, &key, iv, &n);
    FUNC0(&(cbc_out[17]), &(cbc_in[17]), len - 17, &key, iv, &n);
    if (!FUNC2(cbc_in, (int)len, cbc_data, (int)len))
        ret = 0;

    return ret;
}