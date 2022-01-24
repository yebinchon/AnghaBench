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
struct ead_msg_cmd_data {int /*<<< orphan*/  done; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 struct ead_msg_cmd_data* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cmd_data ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  msg ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static bool
FUNC3(void)
{
	struct ead_msg_cmd_data *cmd = FUNC0(msg, cmd_data);
	int datalen = FUNC1(msg) - sizeof(struct ead_msg_cmd_data);

	if (datalen < 0)
		return false;

	if (datalen > 0) {
		FUNC2(1, cmd->data, datalen);
	}

	return !!cmd->done;
}