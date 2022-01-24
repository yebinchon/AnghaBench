#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uuid_t ;
struct TYPE_6__ {scalar_t__ name; void* hash; } ;
struct TYPE_5__ {scalar_t__ name; void* hash; } ;
struct TYPE_4__ {scalar_t__ name; void* hash; } ;

/* Variables and functions */
 TYPE_3__* api_v1_data_formats ; 
 TYPE_2__* api_v1_data_google_formats ; 
 TYPE_1__* api_v1_data_options ; 
 void* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 

void FUNC4(void) {
    int i;

    for(i = 0; api_v1_data_options[i].name ; i++)
        api_v1_data_options[i].hash = FUNC0(api_v1_data_options[i].name);

    for(i = 0; api_v1_data_formats[i].name ; i++)
        api_v1_data_formats[i].hash = FUNC0(api_v1_data_formats[i].name);

    for(i = 0; api_v1_data_google_formats[i].name ; i++)
        api_v1_data_google_formats[i].hash = FUNC0(api_v1_data_google_formats[i].name);

    FUNC3();

	uuid_t uuid;

	// generate
	FUNC1(uuid);

	// unparse (to string)
	char uuid_str[37];
	FUNC2(uuid, uuid_str);
}