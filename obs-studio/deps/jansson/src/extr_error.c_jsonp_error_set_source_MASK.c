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
struct TYPE_3__ {scalar_t__ source; } ;
typedef  TYPE_1__ json_error_t ;

/* Variables and functions */
 size_t JSON_ERROR_SOURCE_LENGTH ; 
 size_t FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char const*,size_t) ; 

void FUNC2(json_error_t *error, const char *source)
{
    size_t length;

    if(!error || !source)
        return;

    length = FUNC0(source);
    if(length < JSON_ERROR_SOURCE_LENGTH)
        FUNC1(error->source, source, length + 1);
    else {
        size_t extra = length - JSON_ERROR_SOURCE_LENGTH + 4;
        FUNC1(error->source, "...", 3);
        FUNC1(error->source + 3, source + extra, length - extra + 1);
    }
}