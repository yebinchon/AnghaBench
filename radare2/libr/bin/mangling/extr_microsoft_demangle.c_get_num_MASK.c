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
struct TYPE_3__ {char* buff_for_parsing; int /*<<< orphan*/  amount_of_read_chars; } ;
typedef  TYPE_1__ SStateInfo ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 

__attribute__((used)) static char *FUNC2(SStateInfo *state)
{
	char *ptr = NULL;
	if (*state->buff_for_parsing >= '0' && *state->buff_for_parsing <= '8') {
		ptr = (char *) FUNC0 (2);
		ptr[0] = *state->buff_for_parsing + 1;
		ptr[1] = '\0';
		state->buff_for_parsing++;
		state->amount_of_read_chars++;
	} else if (*state->buff_for_parsing == '9') {
		ptr = (char *) FUNC0 (3);
		ptr[0] = '1';
		ptr[1] = '0';
		ptr[2] = '\0';
		state->buff_for_parsing++;
		state->amount_of_read_chars++;
	} else if (*state->buff_for_parsing >= 'A' && *state->buff_for_parsing <= 'P') {
		int ret = 0;

		while (*state->buff_for_parsing >= 'A' && *state->buff_for_parsing <= 'P') {
			ret *= 16;
			ret += *state->buff_for_parsing - 'A';
			state->buff_for_parsing++;
			state->amount_of_read_chars++;
		}

		if (*state->buff_for_parsing != '@') {
			return ptr;
		}

		ptr = (char *)FUNC0 (16);
		FUNC1 (ptr, "%u", ret);
		state->buff_for_parsing++;
		state->amount_of_read_chars++;
	}

	return ptr;
}