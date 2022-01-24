#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_4__ {int /*<<< orphan*/  path; } ;
struct TYPE_5__ {TYPE_1__ path; int /*<<< orphan*/  file; int /*<<< orphan*/  session; } ;
typedef  TYPE_2__ nfs41_open_state ;

/* Variables and functions */
 int ACCESS4_EXECUTE ; 
 int ACCESS4_READ ; 
 int ERROR_ACCESS_DENIED ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,...) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(nfs41_open_state *state)
{
    uint32_t supported, access;
    int status = FUNC2(state->session, &state->file,
        ACCESS4_EXECUTE | ACCESS4_READ, &supported, &access);
    if (status) {
        FUNC1("nfs41_access() failed with %s for %s\n", 
            FUNC3(status), state->path.path);
        status = ERROR_ACCESS_DENIED;
    } else if ((supported & ACCESS4_EXECUTE) == 0) {
        /* server can't verify execute access;
         * for now, assume that read access is good enough */
        if ((supported & ACCESS4_READ) == 0 || (access & ACCESS4_READ) == 0) {
            FUNC1("server can't verify execute access, and user does "
                "not have read access to file %s\n", state->path.path);
            status = ERROR_ACCESS_DENIED;
        }
    } else if ((access & ACCESS4_EXECUTE) == 0) {
        FUNC0(1, "user does not have execute access to file %s\n", 
            state->path.path);
        status = ERROR_ACCESS_DENIED;
    } else
        FUNC0(2, "user has execute access to file\n");
    return status;
}