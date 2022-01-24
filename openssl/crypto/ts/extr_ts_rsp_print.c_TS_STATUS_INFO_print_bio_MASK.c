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
struct status_map_st {int member_0; char* member_1; } ;
struct TYPE_3__ {int /*<<< orphan*/ * failure_info; int /*<<< orphan*/  text; int /*<<< orphan*/  status; } ;
typedef  TYPE_1__ TS_STATUS_INFO ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC4 (char const**) ; 
#define  TS_INFO_ADD_INFO_NOT_AVAILABLE 135 
#define  TS_INFO_BAD_ALG 134 
#define  TS_INFO_BAD_DATA_FORMAT 133 
#define  TS_INFO_BAD_REQUEST 132 
#define  TS_INFO_SYSTEM_FAILURE 131 
#define  TS_INFO_TIME_NOT_AVAILABLE 130 
#define  TS_INFO_UNACCEPTED_EXTENSION 129 
#define  TS_INFO_UNACCEPTED_POLICY 128 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,struct status_map_st const*,int /*<<< orphan*/ *) ; 

int FUNC8(BIO *bio, TS_STATUS_INFO *a)
{
    static const char *status_map[] = {
        "Granted.",
        "Granted with modifications.",
        "Rejected.",
        "Waiting.",
        "Revocation warning.",
        "Revoked."
    };
    static const struct status_map_st failure_map[] = {
        {TS_INFO_BAD_ALG,
         "unrecognized or unsupported algorithm identifier"},
        {TS_INFO_BAD_REQUEST,
         "transaction not permitted or supported"},
        {TS_INFO_BAD_DATA_FORMAT,
         "the data submitted has the wrong format"},
        {TS_INFO_TIME_NOT_AVAILABLE,
         "the TSA's time source is not available"},
        {TS_INFO_UNACCEPTED_POLICY,
         "the requested TSA policy is not supported by the TSA"},
        {TS_INFO_UNACCEPTED_EXTENSION,
         "the requested extension is not supported by the TSA"},
        {TS_INFO_ADD_INFO_NOT_AVAILABLE,
         "the additional information requested could not be understood "
         "or is not available"},
        {TS_INFO_SYSTEM_FAILURE,
         "the request cannot be handled due to system failure"},
        {-1, NULL}
    };
    long status;
    int i, lines = 0;

    FUNC2(bio, "Status: ");
    status = FUNC0(a->status);
    if (0 <= status && status < (long)FUNC4(status_map))
        FUNC2(bio, "%s\n", status_map[status]);
    else
        FUNC2(bio, "out of bounds\n");

    FUNC2(bio, "Status description: ");
    for (i = 0; i < FUNC5(a->text); ++i) {
        if (i > 0)
            FUNC3(bio, "\t");
        FUNC1(bio, FUNC6(a->text, i), 0);
        FUNC3(bio, "\n");
    }
    if (i == 0)
        FUNC2(bio, "unspecified\n");

    FUNC2(bio, "Failure info: ");
    if (a->failure_info != NULL)
        lines = FUNC7(bio, failure_map, a->failure_info);
    if (lines == 0)
        FUNC2(bio, "unspecified");
    FUNC2(bio, "\n");

    return 1;
}