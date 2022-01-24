#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lex_t ;
typedef  int /*<<< orphan*/  json_t ;
typedef  int /*<<< orphan*/  json_error_t ;
struct TYPE_2__ {char const* data; size_t len; scalar_t__ pos; } ;
typedef  TYPE_1__ buffer_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  buffer_get ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t,void*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *) ; 

json_t *FUNC5(const char *buffer, size_t buflen, size_t flags, json_error_t *error)
{
    lex_t lex;
    json_t *result;
    buffer_data_t stream_data;

    FUNC1(error, "<buffer>");

    if (buffer == NULL) {
        FUNC0(error, NULL, "wrong arguments");
        return NULL;
    }

    stream_data.data = buffer;
    stream_data.pos = 0;
    stream_data.len = buflen;

    if(FUNC3(&lex, buffer_get, flags, (void *)&stream_data))
        return NULL;

    result = FUNC4(&lex, flags, error);

    FUNC2(&lex);
    return result;
}