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
struct bstr {int /*<<< orphan*/  len; scalar_t__ start; } ;

/* Variables and functions */
 char* FUNC0 (void*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline char *FUNC1(void *talloc_ctx, struct bstr str)
{
    return FUNC0(talloc_ctx, (char *)str.start, str.len);
}