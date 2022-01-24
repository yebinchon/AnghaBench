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
typedef  int /*<<< orphan*/  block128_f ;
typedef  int /*<<< orphan*/  ARIA_KEY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char const*,unsigned char*,size_t,int /*<<< orphan*/  const*,unsigned char*,int*,int /*<<< orphan*/ ) ; 
 scalar_t__ aria_encrypt ; 

__attribute__((used)) static void FUNC1(const unsigned char *in, unsigned char *out,
                             size_t length, const ARIA_KEY *key,
                             unsigned char *ivec, int *num)
{
    FUNC0(in, out, length, key, ivec, num,
                         (block128_f) aria_encrypt);
}