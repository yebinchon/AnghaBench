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
struct TYPE_2__ {char* filename; scalar_t__ format; } ;
struct Masscan {TYPE_1__ output; scalar_t__ echo; scalar_t__ echo_all; } ;

/* Variables and functions */
 int CONF_OK ; 
 scalar_t__ Output_XML ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char const*) ; 

__attribute__((used)) static int FUNC3(struct Masscan *masscan, const char *name, const char *value)
{
    FUNC0(name);
    if (masscan->echo) {
        if (masscan->output.filename[0] || masscan->echo_all)
            FUNC1(masscan->echo, "output-filename = %s\n", masscan->output.filename);
        return 0;
    }
    if (masscan->output.format == 0)
        masscan->output.format = Output_XML; /*TODO: Why is the default XML?*/
    FUNC2(masscan->output.filename,
             sizeof(masscan->output.filename),
             value);
    return CONF_OK;
}