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
struct zip_source {int dummy; } ;
struct zip_error {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct zip_error*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct zip_source*,int*,int*) ; 

void
FUNC2(struct zip_error *err, struct zip_source *src)
{
    int ze, se;
    
    FUNC1(src, &ze, &se);
    FUNC0(err, ze, se);
}