#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct stream {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_3__ {char* member_0; int member_1; } ;
typedef  TYPE_1__ bstr ;

/* Variables and functions */
 int /*<<< orphan*/ * bom ; 
 scalar_t__ FUNC0 (TYPE_1__,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct stream*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct stream*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(struct stream *s)
{
    char buf[4];
    int len = FUNC1(s, buf, sizeof(buf));
    bstr data = {buf, len};
    for (int n = 0; n < 3; n++) {
        if (FUNC0(data, bom[n])) {
            FUNC2(s, FUNC3(bom[n]));
            return n;
        }
    }
    return -1; // default to 8 bit codepages
}