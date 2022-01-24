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
struct rtmp_custom {struct rtmp_custom* password; struct rtmp_custom* username; struct rtmp_custom* key; struct rtmp_custom* server; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rtmp_custom*) ; 

__attribute__((used)) static void FUNC1(void *data)
{
	struct rtmp_custom *service = data;

	FUNC0(service->server);
	FUNC0(service->key);
	FUNC0(service->username);
	FUNC0(service->password);
	FUNC0(service);
}