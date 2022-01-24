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
struct zip_dirent {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct zip_dirent*) ; 
 scalar_t__ FUNC1 (int) ; 

struct zip_dirent *
FUNC2(void)
{
    struct zip_dirent *de;

    if ((de=(struct zip_dirent *)FUNC1(sizeof(*de))) == NULL)
	return NULL;

    FUNC0(de);
    return de;
}