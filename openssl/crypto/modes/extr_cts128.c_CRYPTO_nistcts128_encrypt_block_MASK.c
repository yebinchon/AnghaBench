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
typedef  int /*<<< orphan*/  (* block128_f ) (unsigned char*,unsigned char*,void const*) ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char const*,unsigned char*,size_t,void const*,unsigned char*,int /*<<< orphan*/  (*) (unsigned char*,unsigned char*,void const*)) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,unsigned char*,void const*) ; 

size_t FUNC3(const unsigned char *in,
                                       unsigned char *out, size_t len,
                                       const void *key,
                                       unsigned char ivec[16],
                                       block128_f block)
{
    size_t residue, n;

    if (len < 16)
        return 0;

    residue = len % 16;

    len -= residue;

    FUNC0(in, out, len, key, ivec, block);

    if (residue == 0)
        return len;

    in += len;
    out += len;

    for (n = 0; n < residue; ++n)
        ivec[n] ^= in[n];
    (*block) (ivec, ivec, key);
    FUNC1(out - 16 + residue, ivec, 16);

    return len + residue;
}