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
typedef  int /*<<< orphan*/  timestamp ;
typedef  int /*<<< orphan*/  time_t ;
struct tm {int dummy; } ;
struct Output {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct Output*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct tm*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,struct tm*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct Output *out, FILE *fp)
{
    time_t now = FUNC4(0);
    char timestamp[64];
    struct tm tm;

    FUNC0(out);

    FUNC2(&tm, &now);

    //Tue Jan 21 20:23:22 2014
    //%a %b %d %H:%M:%S %Y
    FUNC3(timestamp, sizeof(timestamp), "%c", &tm);

    FUNC1(fp, "# Masscan done at %s\n", 
                timestamp);
}