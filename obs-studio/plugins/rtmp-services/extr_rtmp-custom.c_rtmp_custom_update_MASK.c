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
struct rtmp_custom {void* password; void* username; int /*<<< orphan*/  use_auth; void* key; void* server; } ;
typedef  int /*<<< orphan*/  obs_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void FUNC4(void *data, obs_data_t *settings)
{
	struct rtmp_custom *service = data;

	FUNC0(service->server);
	FUNC0(service->key);

	service->server = FUNC1(FUNC3(settings, "server"));
	service->key = FUNC1(FUNC3(settings, "key"));
	service->use_auth = FUNC2(settings, "use_auth");
	service->username = FUNC1(FUNC3(settings, "username"));
	service->password = FUNC1(FUNC3(settings, "password"));
}