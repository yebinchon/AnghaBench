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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  HKEY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char) ; 

__attribute__((used)) static HKEY FUNC2(WCHAR *key_name, WCHAR **key_path)
{
    if (!key_name) return 0;

    *key_path = FUNC1(key_name, '\\');
    if (*key_path) (*key_path)++;

    return FUNC0(key_name);
}