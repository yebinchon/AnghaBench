#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  char uint8_t ;
struct TYPE_7__ {int /*<<< orphan*/  xy2d; int /*<<< orphan*/  yplusx; int /*<<< orphan*/  yminusx; } ;
typedef  TYPE_1__ ge_precomp ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_1__*,char) ; 
 char FUNC1 (char,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 TYPE_1__** k25519Precomp ; 
 char FUNC5 (char) ; 

__attribute__((used)) static void FUNC6(ge_precomp *t, int pos, signed char b)
{
    ge_precomp minust;
    uint8_t bnegative = FUNC5(b);
    uint8_t babs = b - ((uint8_t)((-bnegative) & b) << 1);

    FUNC4(t);
    FUNC0(t, &k25519Precomp[pos][0], FUNC1(babs, 1));
    FUNC0(t, &k25519Precomp[pos][1], FUNC1(babs, 2));
    FUNC0(t, &k25519Precomp[pos][2], FUNC1(babs, 3));
    FUNC0(t, &k25519Precomp[pos][3], FUNC1(babs, 4));
    FUNC0(t, &k25519Precomp[pos][4], FUNC1(babs, 5));
    FUNC0(t, &k25519Precomp[pos][5], FUNC1(babs, 6));
    FUNC0(t, &k25519Precomp[pos][6], FUNC1(babs, 7));
    FUNC0(t, &k25519Precomp[pos][7], FUNC1(babs, 8));
    FUNC2(minust.yplusx, t->yminusx);
    FUNC2(minust.yminusx, t->yplusx);
    FUNC3(minust.xy2d, t->xy2d);
    FUNC0(t, &minust, bnegative);
}