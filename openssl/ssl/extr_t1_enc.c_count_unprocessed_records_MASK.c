#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  rlayer; } ;
struct TYPE_5__ {int /*<<< orphan*/  left; scalar_t__ offset; scalar_t__ buf; } ;
typedef  TYPE_1__ SSL3_BUFFER ;
typedef  TYPE_2__ SSL ;
typedef  int /*<<< orphan*/  PACKET ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(SSL *s)
{
    SSL3_BUFFER *rbuf = FUNC4(&s->rlayer);
    PACKET pkt, subpkt;
    int count = 0;

    if (!FUNC0(&pkt, rbuf->buf + rbuf->offset, rbuf->left))
        return -1;

    while (FUNC3(&pkt) > 0) {
        /* Skip record type and version */
        if (!FUNC1(&pkt, 3))
            return -1;

        /* Read until next record */
        if (FUNC2(&pkt, &subpkt))
            return -1;

        count += 1;
    }

    return count;
}