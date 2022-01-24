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
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int REG_ADD ; 
 int REG_DELETE ; 
 int REG_EXPORT ; 
 int REG_IMPORT ; 
 int REG_INVALID ; 
 int REG_QUERY ; 
 int REG_RESTORE ; 
 int REG_SAVE ; 
 int /*<<< orphan*/  STRING_FUNC_HELP ; 
 int STRING_INVALID_CMDLINE ; 
 int /*<<< orphan*/  STRING_INVALID_OPTION ; 
 int STRING_INVALID_SYNTAX ; 
 int STRING_REG_HELP ; 
 int STRING_USAGE ; 
 scalar_t__ TRUE ; 
 int FUNC0 (char*,int*) ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *,char**,char**) ; 
 int FUNC5 (int /*<<< orphan*/ ,char*,char*,scalar_t__,char*,char,char*,scalar_t__) ; 
 int FUNC6 (int /*<<< orphan*/ ,char*,char*,char*,scalar_t__,scalar_t__,scalar_t__) ; 
 int FUNC7 (int,char**) ; 
 int FUNC8 (char*) ; 
 int FUNC9 (int /*<<< orphan*/ ,char*,char*,char*,scalar_t__,scalar_t__) ; 
 int FUNC10 (int,char**) ; 
 int FUNC11 (int,char**) ; 
 int FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int FUNC14 (char) ; 

int FUNC15(int argc, WCHAR *argvW[])
{
    int i, op, op_help, ret;
    BOOL show_op_help = FALSE;
    static const WCHAR switchVAW[] = {'v','a',0};
    static const WCHAR switchVEW[] = {'v','e',0};
    WCHAR *key_name, *path, *value_name = NULL, *type = NULL, *data = NULL, separator = '\0';
    BOOL value_empty = FALSE, value_all = FALSE, recurse = FALSE, force = FALSE;
    HKEY root;

    if (argc == 1)
    {
        FUNC3(STRING_INVALID_SYNTAX);
        FUNC3(STRING_REG_HELP);
        return 1;
    }

    if (FUNC1(argvW[1]))
    {
        FUNC3(STRING_USAGE);
        return 0;
    }

    op = FUNC0(argvW[1], &op_help);

    if (op == REG_INVALID)
    {
        FUNC3(STRING_INVALID_OPTION, argvW[1]);
        FUNC3(STRING_REG_HELP);
        return 1;
    }

    if (argc > 2)
        show_op_help = FUNC1(argvW[2]);

    if (argc == 2 || ((show_op_help || op == REG_IMPORT) && argc > 3))
    {
        FUNC3(STRING_INVALID_SYNTAX);
        FUNC3(STRING_FUNC_HELP, FUNC13(argvW[1]));
        return 1;
    }
    else if (show_op_help)
    {
        FUNC3(op_help);
        return 0;
    }

    if (op == REG_IMPORT)
        return FUNC8(argvW[2]);

    if (op == REG_EXPORT)
        return FUNC7(argc, argvW);

    if (op == REG_SAVE)
        return FUNC11(argc, argvW);

    if (op == REG_RESTORE)
        return FUNC10(argc, argvW);

    if (!FUNC4(argvW[2], &root, &path, &key_name))
        return 1;

    for (i = 3; i < argc; i++)
    {
        if (argvW[i][0] == '/' || argvW[i][0] == '-')
        {
            WCHAR *ptr = &argvW[i][1];

            if (!FUNC2(ptr, switchVEW))
            {
                value_empty = TRUE;
                continue;
            }
            else if (!FUNC2(ptr, switchVAW))
            {
                value_all = TRUE;
                continue;
            }
            else if (!ptr[0] || ptr[1])
            {
                FUNC3(STRING_INVALID_CMDLINE);
                return 1;
            }

            switch(FUNC14(argvW[i][1]))
            {
            case 'v':
                if (value_name || !(value_name = argvW[++i]))
                {
                    FUNC3(STRING_INVALID_CMDLINE);
                    return 1;
                }
                break;
            case 't':
                if (type || !(type = argvW[++i]))
                {
                    FUNC3(STRING_INVALID_CMDLINE);
                    return 1;
                }
                break;
            case 'd':
                if (data || !(data = argvW[++i]))
                {
                    FUNC3(STRING_INVALID_CMDLINE);
                    return 1;
                }
                break;
            case 's':
                if (op == REG_QUERY)
                {
                    recurse = TRUE;
                    break;
                }

                ptr = argvW[++i];
                if (!ptr || FUNC12(ptr) != 1)
                {
                    FUNC3(STRING_INVALID_CMDLINE);
                    return 1;
                }
                separator = ptr[0];
                break;
            case 'f':
                force = TRUE;
                break;
            default:
                FUNC3(STRING_INVALID_CMDLINE);
                return 1;
            }
        }
    }

    if ((value_name && value_empty) || (value_name && value_all) || (value_empty && value_all))
    {
        FUNC3(STRING_INVALID_CMDLINE);
        return 1;
    }

    if (op == REG_ADD)
        ret = FUNC5(root, path, value_name, value_empty, type, separator, data, force);
    else if (op == REG_DELETE)
        ret = FUNC6(root, path, key_name, value_name, value_empty, value_all, force);
    else
        ret = FUNC9(root, path, key_name, value_name, value_empty, recurse);
    return ret;
}