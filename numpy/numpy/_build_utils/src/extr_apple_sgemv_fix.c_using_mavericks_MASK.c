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
typedef  int /*<<< orphan*/  str ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*,char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (char*,char*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int 
FUNC3() 
{
    int r;
    char str[32] = {0};
    size_t size = sizeof(str);
    r = FUNC2("kern.osproductversion", str, &size, NULL, 0);
    if ( r == 0 && FUNC1(str, "10.9", FUNC0("10.9")) == 0) {
        return 1;
    }
    else {
        return 0;
    }
}