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
typedef  int /*<<< orphan*/  deadline ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  AF_SP ; 
 scalar_t__ EFSM ; 
 scalar_t__ ETIMEDOUT ; 
 int /*<<< orphan*/  NN_RESPONDENT ; 
 int /*<<< orphan*/  NN_SURVEYOR ; 
 int /*<<< orphan*/  NN_SURVEYOR_DEADLINE ; 
 int /*<<< orphan*/  SOCKET_ADDRESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 () ; 
 int FUNC2 (int,char*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,char*) ; 
 int /*<<< orphan*/  FUNC8 (int,char*) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC10 ()
{
    int rc;
    int surveyor;
    int respondent1;
    int respondent2;
    int respondent3;
    int deadline;
    char buf [7];

    /*  Test a simple survey with three respondents. */
    surveyor = FUNC9 (AF_SP, NN_SURVEYOR);
    deadline = 500;
    rc = FUNC3 (surveyor, NN_SURVEYOR, NN_SURVEYOR_DEADLINE,
        &deadline, sizeof (deadline));
    FUNC0 (rc == 0);
    FUNC4 (surveyor, SOCKET_ADDRESS);
    respondent1 = FUNC9 (AF_SP, NN_RESPONDENT);
    FUNC6 (respondent1, SOCKET_ADDRESS);
    respondent2 = FUNC9 (AF_SP, NN_RESPONDENT);
    FUNC6 (respondent2, SOCKET_ADDRESS);
    respondent3 = FUNC9 (AF_SP, NN_RESPONDENT);
    FUNC6 (respondent3, SOCKET_ADDRESS);

    /* Check that attempt to recv with no survey pending is EFSM. */
    rc = FUNC2 (surveyor, buf, sizeof (buf), 0);
    FUNC0 (rc == -1 && FUNC1 () == EFSM);

    /*  Send the survey. */
    FUNC8 (surveyor, "ABC");

    /*  First respondent answers. */
    FUNC7 (respondent1, "ABC");
    FUNC8 (respondent1, "DEF");

    /*  Second respondent answers. */
    FUNC7 (respondent2, "ABC");
    FUNC8 (respondent2, "DEF");

    /*  Surveyor gets the responses. */
    FUNC7 (surveyor, "DEF");
    FUNC7 (surveyor, "DEF");

    /*  There are no more responses. Surveyor hits the deadline. */
    rc = FUNC2 (surveyor, buf, sizeof (buf), 0);
    FUNC0 (rc == -1 && FUNC1 () == ETIMEDOUT);

    /*  Third respondent answers (it have already missed the deadline). */
    FUNC7 (respondent3, "ABC");
    FUNC8 (respondent3, "GHI");

    /*  Surveyor initiates new survey. */
    FUNC8 (surveyor, "ABC");

    /*  Check that stale response from third respondent is not delivered. */
    rc = FUNC2 (surveyor, buf, sizeof (buf), 0);
    FUNC0 (rc == -1 && FUNC1 () == ETIMEDOUT);

    /* Check that subsequent attempt to recv with no survey pending is EFSM. */
    rc = FUNC2 (surveyor, buf, sizeof (buf), 0);
    FUNC0 (rc == -1 && FUNC1 () == EFSM);

    FUNC5 (surveyor);
    FUNC5 (respondent1);
    FUNC5 (respondent2);
    FUNC5 (respondent3);

    return 0;
}