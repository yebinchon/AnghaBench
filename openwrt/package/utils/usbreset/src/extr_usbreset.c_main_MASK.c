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
struct usbentry {int dummy; } ;

/* Variables and functions */
 struct usbentry* FUNC0 (int*,int*,int*,int*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct usbentry*) ; 
 int FUNC5 (char*,char*,int*,int*) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC6 (char*) ; 

int FUNC7(int argc, char **argv)
{
	int id1, id2;
	struct usbentry *dev;

	if ((argc == 2) && (FUNC5(argv[1], "%3d/%3d", &id1, &id2) == 2))
	{
		dev = FUNC0(&id1, &id2, NULL, NULL, NULL);
	}
	else if ((argc == 2) && (FUNC5(argv[1], "%4x:%4x", &id1, &id2) == 2))
	{
		dev = FUNC0(NULL, NULL, &id1, &id2, NULL);
	}
	else if ((argc == 2) && FUNC6(argv[1]) < 128)
	{
		dev = FUNC0(NULL, NULL, NULL, NULL, argv[1]);
	}
	else
	{
		FUNC3("Usage:\n"
		       "  usbreset PPPP:VVVV - reset by product and vendor id\n"
		       "  usbreset BBB/DDD   - reset by bus and device number\n"
		       "  usbreset \"Product\" - reset by product name\n\n"
		       "Devices:\n");
		FUNC2();
		return 1;
	}

	if (!dev)
	{
		FUNC1(stderr, "No such device found\n");
		return 1;
	}

	FUNC4(dev);
	return 0;
}