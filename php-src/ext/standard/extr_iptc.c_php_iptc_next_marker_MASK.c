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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EOF ; 
 int M_EOI ; 
 int FUNC0 (int /*<<< orphan*/ *,int,unsigned char**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,unsigned char,unsigned char**) ; 

__attribute__((used)) static int FUNC2(FILE *fp, int spool, unsigned char **spoolbuf)
{
    int c;

    /* skip unimportant stuff */

    c = FUNC0(fp, spool, spoolbuf);

	if (c == EOF) return M_EOI;

    while (c != 0xff) {
        if ((c = FUNC0(fp, spool, spoolbuf)) == EOF)
            return M_EOI; /* we hit EOF */
    }

    /* get marker byte, swallowing possible padding */
    do {
        c = FUNC0(fp, 0, 0);
		if (c == EOF)
            return M_EOI;       /* we hit EOF */
		else
		if (c == 0xff)
			FUNC1(fp, spool, (unsigned char)c, spoolbuf);
    } while (c == 0xff);

    return (unsigned int) c;
}