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
typedef  int /*<<< orphan*/  OSSL_PARAM ;

/* Variables and functions */
 int CHACHA20_POLY1305_BLKLEN ; 
 int /*<<< orphan*/  CHACHA20_POLY1305_FLAGS ; 
 int CHACHA20_POLY1305_IVLEN ; 
 int CHACHA20_POLY1305_KEYLEN ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static int FUNC1(OSSL_PARAM params[])
{
    return FUNC0(params, 0, CHACHA20_POLY1305_FLAGS,
                                     CHACHA20_POLY1305_KEYLEN * 8,
                                     CHACHA20_POLY1305_BLKLEN * 8,
                                     CHACHA20_POLY1305_IVLEN * 8);
}