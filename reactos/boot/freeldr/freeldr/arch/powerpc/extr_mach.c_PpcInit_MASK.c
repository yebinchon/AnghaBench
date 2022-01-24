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
typedef  scalar_t__ of_proxy ;

/* Variables and functions */
 int CacheSizeLimit ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ ofproxy ; 

void FUNC3( of_proxy the_ofproxy ) {
    // Hack to be a bit easier on ram
    CacheSizeLimit = 64 * 1024;
    ofproxy = the_ofproxy;
    FUNC0();
    if(ofproxy) FUNC1();
    else FUNC2();
}