#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int (* get ) (TYPE_2__*) ;int (* peek ) (TYPE_2__*) ;} ;
struct TYPE_14__ {TYPE_2__ source; } ;
typedef  TYPE_1__ json_stream ;
typedef  enum json_type { ____Placeholder_json_type } json_type ;

/* Variables and functions */
 int JSON_ERROR ; 
 int JSON_NUMBER ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,int) ; 
 scalar_t__ FUNC2 (TYPE_1__*,char) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC4 (char*,int) ; 
 int FUNC5 (TYPE_2__*) ; 
 int FUNC6 (TYPE_2__*) ; 
 int FUNC7 (TYPE_2__*) ; 
 int FUNC8 (TYPE_2__*) ; 
 int FUNC9 (TYPE_2__*) ; 
 int FUNC10 (TYPE_2__*) ; 
 int FUNC11 (TYPE_2__*) ; 
 int FUNC12 (TYPE_2__*) ; 

__attribute__((used)) static enum json_type
FUNC13(json_stream *json, int c)
{
    if (FUNC2(json, c) != 0)
        return JSON_ERROR;
    if (c == '-') {
        c = json->source.get(&json->source);
        if (FUNC0(c)) {
            return FUNC13(json, c);
        } else {
            FUNC1(json, "unexpected byte, '%c'", c);
        }
    } else if (FUNC4("123456789", c) != NULL) {
        c = json->source.peek(&json->source);
        if (FUNC0(c)) {
            if (FUNC3(json) != 0)
                return JSON_ERROR;
        }
    }
    /* Up to decimal or exponent has been read. */
    c = json->source.peek(&json->source);
    if (FUNC4(".eE", c) == NULL) {
        if (FUNC2(json, '\0') != 0)
            return JSON_ERROR;
        else
            return JSON_NUMBER;
    }
    if (c == '.') {
        json->source.get(&json->source); // consume .
        if (FUNC2(json, c) != 0)
            return JSON_ERROR;
        if (FUNC3(json) != 0)
            return JSON_ERROR;
    }
    /* Check for exponent. */
    c = json->source.peek(&json->source);
    if (c == 'e' || c == 'E') {
        json->source.get(&json->source); // consume e/E
        if (FUNC2(json, c) != 0)
            return JSON_ERROR;
        c = json->source.peek(&json->source);
        if (c == '+' || c == '-') {
            json->source.get(&json->source); // consume
            if (FUNC2(json, c) != 0)
                return JSON_ERROR;
            if (FUNC3(json) != 0)
                return JSON_ERROR;
        } else if (FUNC0(c)) {
            if (FUNC3(json) != 0)
                return JSON_ERROR;
        } else {
            FUNC1(json, "unexpected byte in number, '%c'", c);
            return JSON_ERROR;
        }
    }
    if (FUNC2(json, '\0') != 0)
        return JSON_ERROR;
    else
        return JSON_NUMBER;
}