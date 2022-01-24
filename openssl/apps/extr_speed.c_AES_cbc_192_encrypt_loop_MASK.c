#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {unsigned char* buf; } ;
typedef  TYPE_1__ loopargs_t ;

/* Variables and functions */
 int /*<<< orphan*/  AES_ENCRYPT ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,unsigned char*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 size_t D_CBC_192_AES ; 
 int /*<<< orphan*/  aes_ks2 ; 
 int /*<<< orphan*/ ** c ; 
 int /*<<< orphan*/  iv ; 
 scalar_t__* lengths ; 
 size_t testnum ; 

__attribute__((used)) static int FUNC2(void *args)
{
    loopargs_t *tempargs = *(loopargs_t **) args;
    unsigned char *buf = tempargs->buf;
    int count;
    for (count = 0; FUNC1(c[D_CBC_192_AES][testnum]); count++)
        FUNC0(buf, buf,
                        (size_t)lengths[testnum], &aes_ks2, iv, AES_ENCRYPT);
    return count;
}