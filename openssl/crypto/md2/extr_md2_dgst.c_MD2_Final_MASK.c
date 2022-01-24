#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned char UCHAR ;
struct TYPE_5__ {unsigned char* data; int* state; int* cksm; int num; } ;
typedef  int MD2_INT ;
typedef  TYPE_1__ MD2_CTX ;

/* Variables and functions */
 int MD2_BLOCK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,unsigned char*) ; 

int FUNC2(unsigned char *md, MD2_CTX *c)
{
    int i, v;
    register UCHAR *cp;
    register MD2_INT *p1, *p2;

    cp = c->data;
    p1 = c->state;
    p2 = c->cksm;
    v = MD2_BLOCK - c->num;
    for (i = c->num; i < MD2_BLOCK; i++)
        cp[i] = (UCHAR) v;

    FUNC1(c, cp);

    for (i = 0; i < MD2_BLOCK; i++)
        cp[i] = (UCHAR) p2[i];
    FUNC1(c, cp);

    for (i = 0; i < 16; i++)
        md[i] = (UCHAR) (p1[i] & 0xff);
    FUNC0(c, sizeof(*c));
    return 1;
}