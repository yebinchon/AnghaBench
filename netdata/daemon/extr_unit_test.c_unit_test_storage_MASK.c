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
typedef  double calculated_number ;

/* Variables and functions */
 int /*<<< orphan*/  STORAGE_NUMBER_NEGATIVE_MAX_RAW ; 
 int /*<<< orphan*/  STORAGE_NUMBER_POSITIVE_MIN_RAW ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (double,int) ; 
 scalar_t__ FUNC2 () ; 
 double FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4() {
    if(FUNC2()) return 0;

    calculated_number storage_number_positive_min = FUNC3(STORAGE_NUMBER_POSITIVE_MIN_RAW);
    calculated_number storage_number_negative_max = FUNC3(STORAGE_NUMBER_NEGATIVE_MAX_RAW);

    calculated_number c, a = 0;
    int i, j, g, r = 0;

    for(g = -1; g <= 1 ; g++) {
        a = 0;

        if(!g) continue;

        for(j = 0; j < 9 ;j++) {
            a += 0.0000001;
            c = a * g;
            for(i = 0; i < 21 ;i++, c *= 10) {
                if(c > 0 && c < storage_number_positive_min) continue;
                if(c < 0 && c > storage_number_negative_max) continue;

                if(FUNC1(c, 1)) return 1;
            }
        }
    }

    // if(check_storage_number(858993459.1234567, 1)) return 1;
    FUNC0(1000000, 2);
    return r;
}