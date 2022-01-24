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
struct bstr {unsigned char* start; int /*<<< orphan*/  len; int /*<<< orphan*/  member_1; int /*<<< orphan*/ * member_0; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*,unsigned char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline struct bstr FUNC1(void *talloc_ctx, struct bstr str)
{
    struct bstr r = { NULL, str.len };
    if (str.start)
        r.start = (unsigned char *)FUNC0(talloc_ctx, str.start, str.len);
    return r;
}