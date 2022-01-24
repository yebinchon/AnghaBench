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
struct rtmp_common {struct rtmp_common* key; struct rtmp_common* output; struct rtmp_common* server; struct rtmp_common* service; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rtmp_common*) ; 

__attribute__((used)) static void FUNC1(void *data)
{
	struct rtmp_common *service = data;

	FUNC0(service->service);
	FUNC0(service->server);
	FUNC0(service->output);
	FUNC0(service->key);
	FUNC0(service);
}