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
typedef  double LONG_DOUBLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (double,double) ; 
 int /*<<< orphan*/  FUNC1 (double,double) ; 
 double FUNC2 (char const*,double) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline LONG_DOUBLE FUNC4(const char *v) {
    LONG_DOUBLE sampling_rate = FUNC2(v, 1.0);
    if(FUNC3(FUNC1(sampling_rate, 0.001))) sampling_rate = 0.001;
    if(FUNC3(FUNC0(sampling_rate, 1.0))) sampling_rate = 1.0;
    return sampling_rate;
}