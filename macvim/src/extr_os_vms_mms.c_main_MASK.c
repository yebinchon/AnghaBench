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
typedef  int /*<<< orphan*/  cmd ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int BUFSIZ ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int FUNC9 (char*) ; 
 scalar_t__ FUNC10 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int,char*,char*,char*) ; 

int FUNC13(int argc, char *argv[])
{
    FILE	*fpi, *fpo;
    char	cmd[132], buf[BUFSIZ], *argp, *error_file, target[132], *mms;
    int		err = 0, err_line = 0;

    mms = "mms";
    argc--;
    argv++;
    while (argc-- > 0)
    {
	argp = *argv++;
	if (*argp == '-')
	{
	    switch (*++argp)
	    {
		case 'm':
		    mms = ++argp;
		    break;
		case 'e':
		    if (!*(error_file = ++argp))
		    {
			error_file = *argv++;
			argc--;
		    }
		    break;
		default:
		    break;
	    }
	}
	else
	{
	    if (*target)
		FUNC8(target, " ");
	    FUNC8(target, argp);
	}
    }
    FUNC12(cmd, sizeof(cmd), "%s/output=tmp:errors.vim_tmp %s",
								 mms, target);
    FUNC11(cmd);
    fpi = FUNC5("tmp:errors.vim_tmp", "r");
    fpo = FUNC5(error_file, "w");
    while (FUNC4(buf, BUFSIZ, fpi))
    {
	if (!FUNC7(buf, "%CC-", 4))
	{
	    err_line++;
	    buf[FUNC9(buf)-1] = '\0';
	    err++;
	}
	else
	{
	    if (err_line)
	    {
		if (FUNC10(buf, FUNC0("At line")))
		{
		    err_line = 0;
		    FUNC6(fpo, "@");
		}
		else
		    buf[FUNC9(buf)-1] = '\0';
	    }
	}
	FUNC6(fpo, "%s", buf);
    }
    FUNC3(fpi);
    FUNC3(fpo);
    while (!FUNC1("tmp:errors.vim_tmp"))
	/*nop*/;
    FUNC2(err ? 44 : 1);
    return(0);
}