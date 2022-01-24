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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  const ge_p3 ;
typedef  int /*<<< orphan*/  ge_p2 ;
typedef  int /*<<< orphan*/  ge_p1p1 ;
typedef  int /*<<< orphan*/  ge_cached ;

/* Variables and functions */
 int /*<<< orphan*/ * Bi ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static void FUNC11(ge_p2 *r, const uint8_t *a,
                                         const ge_p3 *A, const uint8_t *b)
{
    signed char aslide[256];
    signed char bslide[256];
    ge_cached Ai[8]; /* A,3A,5A,7A,9A,11A,13A,15A */
    ge_p1p1 t;
    ge_p3 u;
    ge_p3 A2;
    int i;

    FUNC10(aslide, a);
    FUNC10(bslide, b);

    FUNC8(&Ai[0], A);
    FUNC7(&t, A);
    FUNC4(&A2, &t);
    FUNC0(&t, &A2, &Ai[0]);
    FUNC4(&u, &t);
    FUNC8(&Ai[1], &u);
    FUNC0(&t, &A2, &Ai[1]);
    FUNC4(&u, &t);
    FUNC8(&Ai[2], &u);
    FUNC0(&t, &A2, &Ai[2]);
    FUNC4(&u, &t);
    FUNC8(&Ai[3], &u);
    FUNC0(&t, &A2, &Ai[3]);
    FUNC4(&u, &t);
    FUNC8(&Ai[4], &u);
    FUNC0(&t, &A2, &Ai[4]);
    FUNC4(&u, &t);
    FUNC8(&Ai[5], &u);
    FUNC0(&t, &A2, &Ai[5]);
    FUNC4(&u, &t);
    FUNC8(&Ai[6], &u);
    FUNC0(&t, &A2, &Ai[6]);
    FUNC4(&u, &t);
    FUNC8(&Ai[7], &u);

    FUNC5(r);

    for (i = 255; i >= 0; --i) {
        if (aslide[i] || bslide[i]) {
            break;
        }
    }

    for (; i >= 0; --i) {
        FUNC6(&t, r);

        if (aslide[i] > 0) {
            FUNC4(&u, &t);
            FUNC0(&t, &u, &Ai[aslide[i] / 2]);
        } else if (aslide[i] < 0) {
            FUNC4(&u, &t);
            FUNC9(&t, &u, &Ai[(-aslide[i]) / 2]);
        }

        if (bslide[i] > 0) {
            FUNC4(&u, &t);
            FUNC1(&t, &u, &Bi[bslide[i] / 2]);
        } else if (bslide[i] < 0) {
            FUNC4(&u, &t);
            FUNC2(&t, &u, &Bi[(-bslide[i]) / 2]);
        }

        FUNC3(r, &t);
    }
}