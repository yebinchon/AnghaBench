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
struct input_handle {struct bh_priv* private; } ;
struct bh_priv {unsigned long* seen; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned int,unsigned int,int) ; 
 unsigned int EV_KEY ; 
 unsigned long HZ ; 
 int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long,int) ; 
 TYPE_1__* button_map ; 
 unsigned long jiffies ; 

__attribute__((used)) static void FUNC3(struct input_handle *handle,
			   unsigned int type, unsigned int code, int value)
{
	struct bh_priv *priv = handle->private;
	unsigned long seen = jiffies;
	int btn;

	FUNC0("event type=%u, code=%u, value=%d\n", type, code, value);

	if (type != EV_KEY)
		return;

	btn = FUNC1(code);
	if (btn < 0)
		return;

	FUNC2(button_map[btn].name,
			(seen - priv->seen[btn]) / HZ, value);
	priv->seen[btn] = seen;
}