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
struct parser {int /*<<< orphan*/ * hkey; int /*<<< orphan*/  key_name; } ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  HKEY ;

/* Variables and functions */
 scalar_t__ ERROR_INVALID_PARAMETER ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  KEY_ALL_ACCESS ; 
 int /*<<< orphan*/  REG_OPTION_NON_VOLATILE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct parser*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 

__attribute__((used)) static LONG FUNC6(struct parser *parser, WCHAR *path)
{
    HKEY key_class;
    WCHAR *key_path;
    LONG res;

    FUNC1(parser);

    /* Get the registry class */
    if (!path || !(key_class = FUNC5(path, &key_path)))
        return ERROR_INVALID_PARAMETER;

    res = FUNC0(key_class, key_path, 0, NULL, REG_OPTION_NON_VOLATILE,
                          KEY_ALL_ACCESS, NULL, &parser->hkey, NULL);

    if (res == ERROR_SUCCESS)
    {
        parser->key_name = FUNC2((FUNC4(path) + 1) * sizeof(WCHAR));
        FUNC3(parser->key_name, path);
    }
    else
        parser->hkey = NULL;

    return res;
}