#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  timelib_error_message ;
struct TYPE_8__ {int error_code; int position; char character; int /*<<< orphan*/  message; } ;
struct TYPE_7__ {TYPE_1__* errors; } ;
struct TYPE_6__ {int warning_count; TYPE_3__* warning_messages; } ;
typedef  TYPE_2__ Scanner ;

/* Variables and functions */
 TYPE_3__* FUNC0 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static void FUNC2(Scanner *s, int error_code, char *error, char *sptr, char *cptr)
{
	s->errors->warning_count++;
	s->errors->warning_messages = FUNC0(s->errors->warning_messages, s->errors->warning_count * sizeof(timelib_error_message));
	s->errors->warning_messages[s->errors->warning_count - 1].error_code = error_code;
	s->errors->warning_messages[s->errors->warning_count - 1].position = cptr - sptr;
	s->errors->warning_messages[s->errors->warning_count - 1].character = *cptr;
	s->errors->warning_messages[s->errors->warning_count - 1].message = FUNC1(error);
}