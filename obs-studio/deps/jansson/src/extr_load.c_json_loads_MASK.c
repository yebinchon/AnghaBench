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
struct TYPE_2__ {char const* data; scalar_t__ pos; } ;
typedef  TYPE_1__ string_data_t ;
typedef  int /*<<< orphan*/  lex_t ;
typedef  int /*<<< orphan*/  json_t ;
typedef  int /*<<< orphan*/  json_error_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t,void*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  string_get ; 

json_t *FUNC5(const char *string, size_t flags, json_error_t *error)
{
    lex_t lex;
    json_t *result;
    string_data_t stream_data;

    FUNC1(error, "<string>");

    if (string == NULL) {
        FUNC0(error, NULL, "wrong arguments");
        return NULL;
    }

    stream_data.data = string;
    stream_data.pos = 0;

    if(FUNC3(&lex, string_get, flags, (void *)&stream_data))
        return NULL;

    result = FUNC4(&lex, flags, error);

    FUNC2(&lex);
    return result;
}