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
struct buffer {int dummy; } ;
typedef  int /*<<< orphan*/  socket_descriptor_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer*) ; 
 struct buffer FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer*,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (char const*) ; 

__attribute__((used)) static bool
FUNC7(socket_descriptor_t sd,
               const char *src)
{
    bool ret;

    struct buffer buf = FUNC2(FUNC6(src) + 3);
    FUNC0(FUNC3(&buf, src, FUNC6(src)));
    FUNC0(FUNC3(&buf, "\r\n", 3));
    ret = FUNC5(sd, FUNC1(&buf));
    FUNC4(&buf);
    return ret;
}