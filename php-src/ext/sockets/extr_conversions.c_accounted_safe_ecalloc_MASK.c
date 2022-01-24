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
struct TYPE_3__ {int /*<<< orphan*/  allocations; } ;
typedef  TYPE_1__ ser_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,char,size_t) ; 
 void* FUNC1 (size_t,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void**) ; 

__attribute__((used)) static inline void *FUNC3(size_t nmemb, size_t alloc_size, size_t offset, ser_context *ctx)
{
	void *ret = FUNC1(nmemb, alloc_size, offset);
	FUNC0(ret, '\0', nmemb * alloc_size + offset);
	FUNC2(&ctx->allocations, &ret);
	return ret;
}