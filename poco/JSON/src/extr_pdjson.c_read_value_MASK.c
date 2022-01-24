#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  ntokens; } ;
typedef  TYPE_1__ json_stream ;
typedef  enum json_type { ____Placeholder_json_type } json_type ;

/* Variables and functions */
#define  EOF 128 
 int /*<<< orphan*/  JSON_ARRAY ; 
 int JSON_ERROR ; 
 int /*<<< orphan*/  JSON_FALSE ; 
 int /*<<< orphan*/  JSON_NULL ; 
 int /*<<< orphan*/  JSON_OBJECT ; 
 int /*<<< orphan*/  JSON_TRUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,...) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*,int) ; 
 int FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static enum json_type
FUNC6(json_stream *json, int c)
{
    json->ntokens++;
    switch (c) {
    case EOF:
        FUNC2(json, "%s", "unexpected end of data");
        return JSON_ERROR;
    case '{':
        return FUNC3(json, JSON_OBJECT);
    case '[':
        return FUNC3(json, JSON_ARRAY);
    case '"':
        return FUNC5(json);
    case 'n':
        return FUNC1(json, "ull", JSON_NULL);
    case 'f':
        return FUNC1(json, "alse", JSON_FALSE);
    case 't':
        return FUNC1(json, "rue", JSON_TRUE);
    case '0':
    case '1':
    case '2':
    case '3':
    case '4':
    case '5':
    case '6':
    case '7':
    case '8':
    case '9':
    case '-':
        if (FUNC0(json) != 0)
            return JSON_ERROR;
        return FUNC4(json, c);
    default:
        FUNC2(json, "unexpected byte, '%c'", c);
        return JSON_ERROR;
    }
}