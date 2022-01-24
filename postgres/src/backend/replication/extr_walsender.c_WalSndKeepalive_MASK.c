#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG2 ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 TYPE_1__ output_message ; 
 int /*<<< orphan*/  FUNC2 (char,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  sentPtr ; 

__attribute__((used)) static void
FUNC6(bool requestReply)
{
	FUNC1(DEBUG2, "sending replication keepalive");

	/* construct the message... */
	FUNC5(&output_message);
	FUNC3(&output_message, 'k');
	FUNC4(&output_message, sentPtr);
	FUNC4(&output_message, FUNC0());
	FUNC3(&output_message, requestReply ? 1 : 0);

	/* ... and send it wrapped in CopyData */
	FUNC2('d', output_message.data, output_message.len);
}