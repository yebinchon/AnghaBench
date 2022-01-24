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
typedef  int int32 ;
struct TYPE_3__ {int flagMode; } ;
typedef  TYPE_1__ IspellDict ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  ERANGE ; 
 int /*<<< orphan*/  ERRCODE_CONFIG_FILE_ERROR ; 
 int /*<<< orphan*/  ERROR ; 
 int FLAGNUM_MAXSIZE ; 
#define  FM_CHAR 130 
#define  FM_LONG 129 
#define  FM_NUM 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 int FUNC7 (char*,char**,int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

__attribute__((used)) static void
FUNC11(IspellDict *Conf, char **sflagset, char *sflag)
{
	int32		s;
	char	   *next,
			   *sbuf = *sflagset;
	int			maxstep;
	bool		stop = false;
	bool		met_comma = false;

	maxstep = (Conf->flagMode == FM_LONG) ? 2 : 1;

	while (**sflagset)
	{
		switch (Conf->flagMode)
		{
			case FM_LONG:
			case FM_CHAR:
				FUNC0(sflag, *sflagset);
				sflag += FUNC5(*sflagset);

				/* Go to start of the next flag */
				*sflagset += FUNC5(*sflagset);

				/* Check if we get all characters of flag */
				maxstep--;
				stop = (maxstep == 0);
				break;
			case FM_NUM:
				s = FUNC7(*sflagset, &next, 10);
				if (*sflagset == next || errno == ERANGE)
					FUNC2(ERROR,
							(FUNC3(ERRCODE_CONFIG_FILE_ERROR),
							 FUNC4("invalid affix flag \"%s\"", *sflagset)));
				if (s < 0 || s > FLAGNUM_MAXSIZE)
					FUNC2(ERROR,
							(FUNC3(ERRCODE_CONFIG_FILE_ERROR),
							 FUNC4("affix flag \"%s\" is out of range",
									*sflagset)));
				sflag += FUNC6(sflag, "%0d", s);

				/* Go to start of the next flag */
				*sflagset = next;
				while (**sflagset)
				{
					if (FUNC8(*sflagset))
					{
						if (!met_comma)
							FUNC2(ERROR,
									(FUNC3(ERRCODE_CONFIG_FILE_ERROR),
									 FUNC4("invalid affix flag \"%s\"",
											*sflagset)));
						break;
					}
					else if (FUNC9(*sflagset, ','))
					{
						if (met_comma)
							FUNC2(ERROR,
									(FUNC3(ERRCODE_CONFIG_FILE_ERROR),
									 FUNC4("invalid affix flag \"%s\"",
											*sflagset)));
						met_comma = true;
					}
					else if (!FUNC10(*sflagset))
					{
						FUNC2(ERROR,
								(FUNC3(ERRCODE_CONFIG_FILE_ERROR),
								 FUNC4("invalid character in affix flag \"%s\"",
										*sflagset)));
					}

					*sflagset += FUNC5(*sflagset);
				}
				stop = true;
				break;
			default:
				FUNC1(ERROR, "unrecognized type of Conf->flagMode: %d",
					 Conf->flagMode);
		}

		if (stop)
			break;
	}

	if (Conf->flagMode == FM_LONG && maxstep > 0)
		FUNC2(ERROR,
				(FUNC3(ERRCODE_CONFIG_FILE_ERROR),
				 FUNC4("invalid affix flag \"%s\" with \"long\" flag value",
						sbuf)));

	*sflag = '\0';
}