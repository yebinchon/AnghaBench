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
struct twitch_ingest {char const* url; } ;
struct rtmp_common {char const* service; char const* server; scalar_t__ key; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,char*) ; 
 struct twitch_ingest FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 char const* FUNC5 (char const*,scalar_t__) ; 

__attribute__((used)) static const char *FUNC6(void *data)
{
	struct rtmp_common *service = data;

	if (service->service && FUNC0(service->service, "Twitch") == 0) {
		if (service->server && FUNC0(service->server, "auto") == 0) {
			struct twitch_ingest ing;

			FUNC3(3);

			FUNC2();
			ing = FUNC1(0);
			FUNC4();

			return ing.url;
		}
	}

	if (service->service && FUNC0(service->service, "YouNow") == 0) {
		if (service->server && service->key) {
			return FUNC5(service->server, service->key);
		}
	}

	return service->server;
}