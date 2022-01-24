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
typedef  int /*<<< orphan*/  RTMP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ RTMP_TLS_ctx ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void
FUNC2(RTMP *r)
{
#if defined(CRYPTO) && defined(USE_MBEDTLS)
  if (RTMP_TLS_ctx)
    RTMP_TLS_Free();
#endif
    FUNC1(r);
}