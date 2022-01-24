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
struct va_create_native {int /*<<< orphan*/ * (* create ) (struct ra*) ;int /*<<< orphan*/  name; } ;
struct ra {int dummy; } ;
struct mp_log {int dummy; } ;
typedef  int /*<<< orphan*/  VADisplay ;

/* Variables and functions */
 int FUNC0 (struct va_create_native*) ; 
 struct va_create_native* create_native_cbs ; 
 int /*<<< orphan*/  FUNC1 (struct mp_log*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (struct ra*) ; 

__attribute__((used)) static VADisplay *FUNC3(struct ra *ra, struct mp_log *log)
{
    for (int n = 0; n < FUNC0(create_native_cbs); n++) {
        const struct va_create_native *disp = &create_native_cbs[n];
        FUNC1(log, "Trying to open a %s VA display...\n", disp->name);
        VADisplay *display = disp->create(ra);
        if (display)
            return display;
    }
    return NULL;
}