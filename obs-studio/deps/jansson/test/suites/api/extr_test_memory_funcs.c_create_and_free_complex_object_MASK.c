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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*,int,char*,char*,int,char*,int /*<<< orphan*/ ,char*,char*,char*,char*,int,int,int) ; 

__attribute__((used)) static void FUNC2()
{
    json_t *obj;

    obj = FUNC1("{s:i,s:n,s:b,s:b,s:{s:s},s:[i,i,i]}",
                    "foo", 42,
                    "bar",
                    "baz", 1,
                    "qux", 0,
                    "alice", "bar", "baz",
                    "bob", 9, 8, 7);

    FUNC0(obj);
}