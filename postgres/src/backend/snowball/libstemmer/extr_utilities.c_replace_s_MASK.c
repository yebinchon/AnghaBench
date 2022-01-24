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
typedef  int /*<<< orphan*/  symbol ;
struct SN_env {int l; int c; int /*<<< orphan*/  const* p; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int) ; 
 int FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  const* FUNC3 () ; 
 int /*<<< orphan*/  const* FUNC4 (int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int) ; 

extern int FUNC6(struct SN_env * z, int c_bra, int c_ket, int s_size, const symbol * s, int * adjptr)
{
    int adjustment;
    int len;
    if (z->p == NULL) {
        z->p = FUNC3();
        if (z->p == NULL) return -1;
    }
    adjustment = s_size - (c_ket - c_bra);
    len = FUNC2(z->p);
    if (adjustment != 0) {
        if (adjustment + len > FUNC0(z->p)) {
            z->p = FUNC4(z->p, adjustment + len);
            if (z->p == NULL) return -1;
        }
        FUNC5(z->p + c_ket + adjustment,
                z->p + c_ket,
                (len - c_ket) * sizeof(symbol));
        FUNC1(z->p, adjustment + len);
        z->l += adjustment;
        if (z->c >= c_ket)
            z->c += adjustment;
        else if (z->c > c_bra)
            z->c = c_bra;
    }
    if (s_size) FUNC5(z->p + c_bra, s, s_size * sizeof(symbol));
    if (adjptr != NULL)
        *adjptr = adjustment;
    return 0;
}