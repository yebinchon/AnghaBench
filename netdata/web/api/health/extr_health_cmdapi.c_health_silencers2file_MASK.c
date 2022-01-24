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
struct TYPE_3__ {scalar_t__ len; char* buffer; } ;
typedef  int /*<<< orphan*/  FILE ;
typedef  TYPE_1__ BUFFER ;

/* Variables and functions */
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  silencers_filename ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(BUFFER *wb) {
    if (wb->len == 0) return;

    FILE *fd = FUNC2(silencers_filename, "wb");
    if(fd) {
        size_t written = (size_t)FUNC3(fd, "%s", wb->buffer) ;
        if (written == wb->len ) {
            FUNC4("Silencer changes written to %s", silencers_filename);
        }
        FUNC1(fd);
        return;
    }
    FUNC0("Silencer changes could not be written to %s. Error %s", silencers_filename, FUNC5(errno));
}