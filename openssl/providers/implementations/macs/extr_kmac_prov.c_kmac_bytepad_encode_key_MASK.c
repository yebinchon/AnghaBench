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

/* Variables and functions */
 int KMAC_MAX_ENCODED_HEADER_LEN ; 
 int KMAC_MAX_KEY ; 
 int FUNC0 (unsigned char*,int*,unsigned char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int*,unsigned char const*,int) ; 

__attribute__((used)) static int FUNC2(unsigned char *out, int *out_len,
                                   const unsigned char *in, int in_len,
                                   int w)
{
    unsigned char tmp[KMAC_MAX_KEY + KMAC_MAX_ENCODED_HEADER_LEN];
    int tmp_len;

    if (!FUNC1(tmp, &tmp_len, in, in_len))
        return 0;

    return FUNC0(out, out_len, tmp, tmp_len, NULL, 0, w);
}