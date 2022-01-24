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
typedef  unsigned char const UCHAR ;
struct TYPE_4__ {unsigned char const* data; size_t num; } ;
typedef  TYPE_1__ MD2_CTX ;

/* Variables and functions */
 size_t MD2_BLOCK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,unsigned char const*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char const*,unsigned char const*,size_t) ; 

int FUNC2(MD2_CTX *c, const unsigned char *data, size_t len)
{
    register UCHAR *p;

    if (len == 0)
        return 1;

    p = c->data;
    if (c->num != 0) {
        if ((c->num + len) >= MD2_BLOCK) {
            FUNC1(&(p[c->num]), data, MD2_BLOCK - c->num);
            FUNC0(c, c->data);
            data += (MD2_BLOCK - c->num);
            len -= (MD2_BLOCK - c->num);
            c->num = 0;
            /* drop through and do the rest */
        } else {
            FUNC1(&(p[c->num]), data, len);
            /* data+=len; */
            c->num += (int)len;
            return 1;
        }
    }
    /*
     * we now can process the input data in blocks of MD2_BLOCK chars and
     * save the leftovers to c->data.
     */
    while (len >= MD2_BLOCK) {
        FUNC0(c, data);
        data += MD2_BLOCK;
        len -= MD2_BLOCK;
    }
    FUNC1(p, data, len);
    c->num = (int)len;
    return 1;
}