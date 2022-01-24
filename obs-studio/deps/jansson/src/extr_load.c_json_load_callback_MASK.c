#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  stream_data ;
typedef  int /*<<< orphan*/  lex_t ;
typedef  int /*<<< orphan*/  json_t ;
typedef  int /*<<< orphan*/ * json_load_callback_t ;
typedef  int /*<<< orphan*/  json_error_t ;
typedef  int /*<<< orphan*/  get_func ;
struct TYPE_4__ {void* arg; int /*<<< orphan*/ * callback; } ;
typedef  TYPE_1__ callback_data_t ;

/* Variables and functions */
 scalar_t__ callback_get ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *) ; 

json_t *FUNC6(json_load_callback_t callback, void *arg, size_t flags, json_error_t *error)
{
    lex_t lex;
    json_t *result;

    callback_data_t stream_data;

    FUNC4(&stream_data, 0, sizeof(stream_data));
    stream_data.callback = callback;
    stream_data.arg = arg;

    FUNC1(error, "<callback>");

    if (callback == NULL) {
        FUNC0(error, NULL, "wrong arguments");
        return NULL;
    }

    if(FUNC3(&lex, (get_func)callback_get, flags, &stream_data))
        return NULL;

    result = FUNC5(&lex, flags, error);

    FUNC2(&lex);
    return result;
}