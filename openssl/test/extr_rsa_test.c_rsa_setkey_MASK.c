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
typedef  int /*<<< orphan*/  RSA ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ *,unsigned char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,unsigned char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,unsigned char*) ; 

__attribute__((used)) static int FUNC4(RSA** key, unsigned char* ctext, int idx)
{
    int clen = 0;
    *key = FUNC0();
    switch (idx) {
    case 0:
        clen = FUNC1(*key, ctext);
        break;
    case 1:
        clen = FUNC2(*key, ctext);
        break;
    case 2:
        clen = FUNC3(*key, ctext);
        break;
    }
    return clen;
}