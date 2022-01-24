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
struct TYPE_3__ {int /*<<< orphan*/ * data; int /*<<< orphan*/  length; } ;
typedef  TYPE_1__ BUF_MEM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *FUNC3(BUF_MEM *str, size_t len)
{
    char *ret;

    ret = FUNC1(len);
    if (str->data != NULL) {
        if (ret != NULL) {
            FUNC2(ret, str->data, str->length);
            FUNC0(str->data, str->length);
            str->data = NULL;
        }
    }
    return ret;
}