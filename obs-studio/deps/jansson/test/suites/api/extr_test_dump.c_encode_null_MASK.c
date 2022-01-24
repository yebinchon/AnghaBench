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

/* Variables and functions */
 int /*<<< orphan*/  JSON_ENCODE_ANY ; 
 int /*<<< orphan*/  encode_null_callback ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC4()
{
    if(FUNC3(NULL, JSON_ENCODE_ANY) != NULL)
        FUNC0("json_dumps didn't fail for NULL");

    if(FUNC2(NULL, stderr, JSON_ENCODE_ANY) != -1)
        FUNC0("json_dumpf didn't fail for NULL");

    /* Don't test json_dump_file to avoid creating a file */

    if(FUNC1(NULL, encode_null_callback, NULL, JSON_ENCODE_ANY) != -1)
        FUNC0("json_dump_callback didn't fail for NULL");
}