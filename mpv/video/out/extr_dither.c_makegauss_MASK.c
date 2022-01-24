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
typedef  scalar_t__ uint64_t ;
struct ctx {unsigned int sizeb; int size; int size2; int gauss_radius; size_t gauss_middle; scalar_t__* gauss; int /*<<< orphan*/  avlfg; } ;
typedef  size_t index_t ;

/* Variables and functions */
 unsigned int MAX_SIZEB ; 
 double UINT64_MAX ; 
 size_t FUNC0 (struct ctx*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 double FUNC3 (double) ; 
 double FUNC4 (double) ; 
 double FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct ctx *k, unsigned int sizeb)
{
    FUNC1(sizeb >= 1 && sizeb <= MAX_SIZEB);

    FUNC2(&k->avlfg, 123);

    k->sizeb = sizeb;
    k->size = 1 << k->sizeb;
    k->size2 = k->size * k->size;

    k->gauss_radius = k->size / 2 - 1;
    k->gauss_middle = FUNC0(k, k->gauss_radius, k->gauss_radius);

    unsigned int gauss_size = k->gauss_radius * 2 + 1;
    unsigned int gauss_size2 = gauss_size * gauss_size;

    for (index_t c = 0; c < k->size2; c++)
        k->gauss[c] = 0;

    double sigma = -FUNC4(1.5 / UINT64_MAX * gauss_size2) / k->gauss_radius;

    for (index_t gy = 0; gy <= k->gauss_radius; gy++) {
        for (index_t gx = 0; gx <= gy; gx++) {
            int cx = (int)gx - k->gauss_radius;
            int cy = (int)gy - k->gauss_radius;
            int sq = cx * cx + cy * cy;
            double e = FUNC3(-FUNC5(sq) * sigma);
            uint64_t v = e / gauss_size2 * UINT64_MAX;
            k->gauss[FUNC0(k, gx, gy)] =
                k->gauss[FUNC0(k, gy, gx)] =
                k->gauss[FUNC0(k, gx, gauss_size - 1 - gy)] =
                k->gauss[FUNC0(k, gy, gauss_size - 1 - gx)] =
                k->gauss[FUNC0(k, gauss_size - 1 - gx, gy)] =
                k->gauss[FUNC0(k, gauss_size - 1 - gy, gx)] =
                k->gauss[FUNC0(k, gauss_size - 1 - gx, gauss_size - 1 - gy)] =
                k->gauss[FUNC0(k, gauss_size - 1 - gy, gauss_size - 1 - gx)] = v;
        }
    }
    uint64_t total = 0;
    for (index_t c = 0; c < k->size2; c++) {
        uint64_t oldtotal = total;
        total += k->gauss[c];
        FUNC1(total >= oldtotal);
    }
}