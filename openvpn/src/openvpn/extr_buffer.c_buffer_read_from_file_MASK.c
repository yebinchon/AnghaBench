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
struct gc_arena {int dummy; } ;
struct buffer {int /*<<< orphan*/  member_0; } ;
typedef  scalar_t__ ssize_t ;
struct TYPE_3__ {size_t st_size; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ platform_stat_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer*) ; 
 struct buffer FUNC2 (size_t const,struct gc_arena*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int,size_t const,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer*,struct gc_arena*) ; 
 int /*<<< orphan*/ * FUNC8 (char const*,char*) ; 
 scalar_t__ FUNC9 (char const*,TYPE_1__*) ; 

struct buffer
FUNC10(const char *filename, struct gc_arena *gc)
{
    struct buffer ret = { 0 };

    platform_stat_t file_stat = {0};
    if (FUNC9(filename, &file_stat) < 0)
    {
        return ret;
    }

    FILE *fp = FUNC8(filename, "r");
    if (!fp)
    {
        return ret;
    }

    const size_t size = file_stat.st_size;
    ret = FUNC2(size + 1, gc); /* space for trailing \0 */
    ssize_t read_size = FUNC6(FUNC1(&ret), 1, size, fp);
    if (read_size < 0)
    {
        FUNC7(&ret, gc);
        goto cleanup;
    }
    FUNC0(FUNC3(&ret, read_size));
    FUNC4(&ret);

cleanup:
    FUNC5(fp);
    return ret;
}