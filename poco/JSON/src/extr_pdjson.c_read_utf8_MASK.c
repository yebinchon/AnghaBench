#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {char (* get ) (TYPE_2__*) ;} ;
struct TYPE_6__ {TYPE_2__ source; } ;
typedef  TYPE_1__ json_stream ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,char*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,char) ; 
 char FUNC3 (TYPE_2__*) ; 
 int FUNC4 (int) ; 

__attribute__((used)) static int
FUNC5(json_stream* json, int next_char)
{
    int count = FUNC4(next_char);
    if (!count)
    {
        FUNC1(json, "%s", "Bad character.");
        return -1;
    }

    char buffer[4];
    buffer[0] = next_char;
    for (int i = 1; i < count; ++i)
    {
        buffer[i] = json->source.get(&json->source);;
    }

    if (!FUNC0((unsigned char*) buffer, count))
    {
        FUNC1(json, "%s", "No legal UTF8 found");
        return -1;
    }

    for (int i = 0; i < count; ++i)
    {
        if (FUNC2(json, buffer[i]) != 0)
            return -1;
    }
    return 0;
}