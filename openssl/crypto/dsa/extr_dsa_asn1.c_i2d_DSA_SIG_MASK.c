#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WPACKET ;
struct TYPE_8__ {int /*<<< orphan*/ * data; } ;
struct TYPE_7__ {int /*<<< orphan*/  s; int /*<<< orphan*/  r; } ;
typedef  TYPE_1__ DSA_SIG ;
typedef  TYPE_2__ BUF_MEM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 TYPE_2__* FUNC1 () ; 
 int /*<<< orphan*/  SIZE_MAX ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC9(const DSA_SIG *sig, unsigned char **ppout)
{
    BUF_MEM *buf = NULL;
    size_t encoded_len;
    WPACKET pkt;

    if (ppout == NULL) {
        if (!FUNC6(&pkt, 0))
            return -1;
    } else if (*ppout == NULL) {
        if ((buf = FUNC1()) == NULL
                || !FUNC5(&pkt, buf, 0)) {
            FUNC0(buf);
            return -1;
        }
    } else {
        if (!FUNC7(&pkt, *ppout, SIZE_MAX, 0))
            return -1;
    }

    if (!FUNC8(&pkt, sig->r, sig->s)
            || !FUNC4(&pkt, &encoded_len)
            || !FUNC3(&pkt)) {
        FUNC0(buf);
        FUNC2(&pkt);
        return -1;
    }

    if (ppout != NULL) {
        if (*ppout == NULL) {
            *ppout = (unsigned char *)buf->data;
            buf->data = NULL;
            FUNC0(buf);
        } else {
            *ppout += encoded_len;
        }
    }

    return (int)encoded_len;
}