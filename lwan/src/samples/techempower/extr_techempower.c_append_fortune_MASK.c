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
struct fortune_array {int dummy; } ;
struct coro {int dummy; } ;
struct TYPE_2__ {int id; char* message; } ;
struct Fortune {TYPE_1__ item; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 char* FUNC1 (struct coro*,char const*) ; 
 struct Fortune* FUNC2 (struct fortune_array*) ; 

__attribute__((used)) static bool FUNC3(struct coro *coro, struct fortune_array *fortunes,
                           int id, const char *message)
{
    struct Fortune *fortune;
    char *message_copy;

    message_copy = FUNC1(coro, message);
    if (FUNC0(!message_copy))
        return false;

    fortune = FUNC2(fortunes);
    if (FUNC0(!fortune))
        return false;

    fortune->item.id = id;
    fortune->item.message = message_copy;

    return true;
}