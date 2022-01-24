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
struct variable2json_helper {int /*<<< orphan*/  options; int /*<<< orphan*/  counter; int /*<<< orphan*/ * buf; } ;
struct TYPE_3__ {int /*<<< orphan*/  rrdvar_root_index; } ;
typedef  TYPE_1__ RRDSET ;
typedef  int /*<<< orphan*/  BUFFER ;

/* Variables and functions */
 int /*<<< orphan*/  RRDVAR_OPTION_CUSTOM_CHART_VAR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  single_variable2json ; 

void FUNC3(RRDSET *st, BUFFER *buf) {
    struct variable2json_helper helper = {
            .buf = buf,
            .counter = 0,
            .options = RRDVAR_OPTION_CUSTOM_CHART_VAR
    };

    FUNC1(buf, "{");
    FUNC0(&st->rrdvar_root_index, single_variable2json, (void *)&helper);
    FUNC2(buf, "\n\t\t\t}");
}