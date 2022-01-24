#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int (* i2d ) (void*,unsigned char**) ;} ;
typedef  TYPE_1__ TEST_PACKAGE ;
typedef  int /*<<< orphan*/  EXPECTED ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*) ; 
 int FUNC1 (unsigned char*,int,int /*<<< orphan*/ *,long,TYPE_1__ const*) ; 
 int FUNC2 (void*,unsigned char**) ; 

__attribute__((used)) static int FUNC3(EXPECTED *bytes, long nbytes,
                      const TEST_PACKAGE *package)
{
    unsigned char *data = NULL;
    int len;
    int ret = 0;
    void *p = bytes;

    len = package->i2d(p, &data);
    if (len < 0)
        return -1;

    ret = FUNC1(data, len, bytes, nbytes, package);
    FUNC0(data);
    return ret;
}