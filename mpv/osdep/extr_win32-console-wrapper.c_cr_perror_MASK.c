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
typedef  char wchar_t ;
typedef  int /*<<< orphan*/  LPWSTR ;

/* Variables and functions */
 int FORMAT_MESSAGE_ALLOCATE_BUFFER ; 
 int FORMAT_MESSAGE_FROM_SYSTEM ; 
 int FORMAT_MESSAGE_IGNORE_INSERTS ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  LANG_NEUTRAL ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SUBLANG_DEFAULT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char const*,char*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC5(const wchar_t *prefix)
{
    wchar_t *error;

    FUNC0(FORMAT_MESSAGE_ALLOCATE_BUFFER |
                   FORMAT_MESSAGE_FROM_SYSTEM |
                   FORMAT_MESSAGE_IGNORE_INSERTS,
                   NULL, FUNC1(),
                   FUNC3(LANG_NEUTRAL, SUBLANG_DEFAULT),
                   (LPWSTR)&error, 0, NULL);

    FUNC4(stderr, L"%s: %s", prefix, error);
    FUNC2(error);
}