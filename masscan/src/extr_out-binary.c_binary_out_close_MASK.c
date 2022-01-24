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
struct TYPE_2__ {size_t bytes_written; } ;
struct Output {TYPE_1__ rotate; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct Output*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 size_t FUNC2 (char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*) ; 

__attribute__((used)) static void
FUNC6(struct Output *out, FILE *fp)
{
    char firstrecord[2+'a'];
    size_t bytes_written;

    FUNC0(out);

    FUNC3(firstrecord, 0, 2+'a');
    FUNC5(firstrecord, 2+'a', "masscan/1.1");
    bytes_written = FUNC2(firstrecord, 1, 2+'a', fp);
    if (bytes_written != 2+'a') {
        FUNC4("output");
        FUNC1(1);
    }
    out->rotate.bytes_written += bytes_written;
}