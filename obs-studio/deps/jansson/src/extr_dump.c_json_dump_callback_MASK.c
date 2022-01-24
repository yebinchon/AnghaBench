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
typedef  int /*<<< orphan*/  json_t ;
typedef  int /*<<< orphan*/  json_dump_callback_t ;

/* Variables and functions */
 size_t JSON_ENCODE_ANY ; 
 int FUNC0 (int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 

int FUNC3(const json_t *json, json_dump_callback_t callback, void *data, size_t flags)
{
    if(!(flags & JSON_ENCODE_ANY)) {
        if(!FUNC1(json) && !FUNC2(json))
           return -1;
    }

    return FUNC0(json, flags, 0, callback, data);
}