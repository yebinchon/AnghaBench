#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int special_file; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__ ftp_data ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static void FUNC2 (void) {
    FUNC0();
    if (ftp_data.special_file) {
        FUNC1 ();
        ftp_data.special_file = false;
    }
}