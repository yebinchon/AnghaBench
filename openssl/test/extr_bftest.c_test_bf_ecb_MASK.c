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
typedef  int /*<<< orphan*/  BF_KEY ;

/* Variables and functions */
 int /*<<< orphan*/  BF_BLOCK ; 
 int /*<<< orphan*/  BF_DECRYPT ; 
 int /*<<< orphan*/  BF_ENCRYPT ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,unsigned char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ) ; 
 unsigned char** cipher_data ; 
 int /*<<< orphan*/ * ecb_data ; 
 unsigned char** plain_data ; 

__attribute__((used)) static int FUNC3(int n)
{
    int ret = 1;
    BF_KEY key;
    unsigned char out[8];

    FUNC1(&key, 8, ecb_data[n]);

    FUNC0(&(plain_data[n][0]), out, &key, BF_ENCRYPT);
    if (!FUNC2(&(cipher_data[n][0]), BF_BLOCK, out, BF_BLOCK))
        ret = 0;

    FUNC0(out, out, &key, BF_DECRYPT);
    if (!FUNC2(&(plain_data[n][0]), BF_BLOCK, out, BF_BLOCK))
        ret = 0;

    return ret;
}