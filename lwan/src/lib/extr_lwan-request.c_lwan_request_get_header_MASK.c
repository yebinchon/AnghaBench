#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct lwan_request {TYPE_1__* helper; } ;
typedef  int /*<<< orphan*/  name ;
struct TYPE_2__ {size_t n_header_start; char** header_start; } ;

/* Variables and functions */
 char* HEADER_TERMINATOR_LEN ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (char*,int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*,size_t) ; 

const char *FUNC3(struct lwan_request *request,
                                    const char *header)
{
    char name[64];
    int r;

    r = FUNC1(name, sizeof(name), "%s: ", header);
    if (FUNC0(r < 0 || r >= (int)sizeof(name)))
        return NULL;

    for (size_t i = 0; i < request->helper->n_header_start; i++) {
        const char *start = request->helper->header_start[i];
        char *end = request->helper->header_start[i + 1] - HEADER_TERMINATOR_LEN;

        if (FUNC0(end - start < r))
            continue;

        if (!FUNC2(start, name, (size_t)r)) {
            *end = '\0';
            return start + r;
        }
    }

    return NULL;
}