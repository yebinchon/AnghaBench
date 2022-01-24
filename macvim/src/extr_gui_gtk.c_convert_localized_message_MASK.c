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
typedef  int /*<<< orphan*/  char_u ;
struct TYPE_3__ {scalar_t__ vc_type; } ;

/* Variables and functions */
 scalar_t__ CONV_NONE ; 
 TYPE_1__ output_conv ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static const char *
FUNC2(char_u **buffer, const char *message)
{
    if (output_conv.vc_type == CONV_NONE)
	return message;

    FUNC1(*buffer);
    *buffer = FUNC0(&output_conv, (char_u *)message, NULL);

    return (const char *)*buffer;
}