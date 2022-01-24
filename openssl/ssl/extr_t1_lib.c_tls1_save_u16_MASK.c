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
typedef  unsigned int uint16_t ;
typedef  int /*<<< orphan*/  PACKET ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (unsigned int*) ; 
 unsigned int* FUNC1 (size_t) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,unsigned int*) ; 
 size_t FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SSL_F_TLS1_SAVE_U16 ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5(PACKET *pkt, uint16_t **pdest, size_t *pdestlen)
{
    unsigned int stmp;
    size_t size, i;
    uint16_t *buf;

    size = FUNC3(pkt);

    /* Invalid data length */
    if (size == 0 || (size & 1) != 0)
        return 0;

    size >>= 1;

    if ((buf = FUNC1(size * sizeof(*buf))) == NULL)  {
        FUNC4(SSL_F_TLS1_SAVE_U16, ERR_R_MALLOC_FAILURE);
        return 0;
    }
    for (i = 0; i < size && FUNC2(pkt, &stmp); i++)
        buf[i] = stmp;

    if (i != size) {
        FUNC0(buf);
        return 0;
    }

    FUNC0(*pdest);
    *pdest = buf;
    *pdestlen = size;

    return 1;
}