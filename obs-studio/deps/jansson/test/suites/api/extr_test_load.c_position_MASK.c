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
typedef  int /*<<< orphan*/  json_t ;
struct TYPE_3__ {int position; } ;
typedef  TYPE_1__ json_error_t ;

/* Variables and functions */
 size_t JSON_DISABLE_EOF_CHECK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,size_t,TYPE_1__*) ; 

__attribute__((used)) static void FUNC3()
{
    json_t *json;
    size_t flags = JSON_DISABLE_EOF_CHECK;
    json_error_t error;

    json = FUNC2("{\"foo\": \"bar\"}", 0, &error);
    if(error.position != 14)
        FUNC0("json_loads returned a wrong position");
    FUNC1(json);

    json = FUNC2("{\"foo\": \"bar\"} baz quux", flags, &error);
    if(error.position != 14)
        FUNC0("json_loads returned a wrong position");
    FUNC1(json);
}