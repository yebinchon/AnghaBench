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
struct mp_aframe {int dummy; } ;

/* Variables and functions */
 int AF_FORMAT_DOUBLE ; 
 int AF_FORMAT_FLOAT ; 
 double FUNC0 (double,double,double) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 float FUNC2 (float,float,float) ; 
 int /*<<< orphan*/ ** FUNC3 (struct mp_aframe*) ; 
 int /*<<< orphan*/  FUNC4 (struct mp_aframe*) ; 
 int FUNC5 (struct mp_aframe*) ; 
 int FUNC6 (struct mp_aframe*) ; 

__attribute__((used)) static void FUNC7(struct mp_aframe *mpa)
{
    int format = FUNC1(FUNC4(mpa));
    int num_planes = FUNC5(mpa);
    uint8_t **planes = FUNC3(mpa);
    if (!planes)
        return;
    for (int p = 0; p < num_planes; p++) {
        void *ptr = planes[p];
        int total = FUNC6(mpa);
        if (format == AF_FORMAT_FLOAT) {
            for (int s = 0; s < total; s++)
                ((float *)ptr)[s] = FUNC2(((float *)ptr)[s], -1.0f, 1.0f);
        } else if (format == AF_FORMAT_DOUBLE) {
            for (int s = 0; s < total; s++)
                ((double *)ptr)[s] = FUNC0(((double *)ptr)[s], -1.0, 1.0);
        }
    }
}