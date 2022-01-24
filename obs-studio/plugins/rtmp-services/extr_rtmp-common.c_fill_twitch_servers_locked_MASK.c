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
struct twitch_ingest {char* url; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  obs_property_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 struct twitch_ingest FUNC2 (size_t) ; 
 size_t FUNC3 () ; 

__attribute__((used)) static bool FUNC4(obs_property_t *servers_prop)
{
	size_t count = FUNC3();

	FUNC1(servers_prop,
				     FUNC0("Server.Auto"), "auto");

	if (count <= 1)
		return false;

	for (size_t i = 0; i < count; i++) {
		struct twitch_ingest ing = FUNC2(i);
		FUNC1(servers_prop, ing.name, ing.url);
	}

	return true;
}