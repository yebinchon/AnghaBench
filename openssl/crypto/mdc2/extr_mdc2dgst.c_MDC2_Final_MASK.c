#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {unsigned int num; int pad_type; int* data; scalar_t__ hh; scalar_t__ h; } ;
typedef  TYPE_1__ MDC2_CTX ;

/* Variables and functions */
 unsigned int MDC2_BLOCK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ ,unsigned int) ; 

int FUNC3(unsigned char *md, MDC2_CTX *c)
{
    unsigned int i;
    int j;

    i = c->num;
    j = c->pad_type;
    if ((i > 0) || (j == 2)) {
        if (j == 2)
            c->data[i++] = 0x80;
        FUNC2(&(c->data[i]), 0, MDC2_BLOCK - i);
        FUNC0(c, c->data, MDC2_BLOCK);
    }
    FUNC1(md, (char *)c->h, MDC2_BLOCK);
    FUNC1(&(md[MDC2_BLOCK]), (char *)c->hh, MDC2_BLOCK);
    return 1;
}