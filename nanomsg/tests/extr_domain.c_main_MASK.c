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
typedef  int /*<<< orphan*/  op ;

/* Variables and functions */
 int AF_SP ; 
 int /*<<< orphan*/  NN_DOMAIN ; 
 int NN_PAIR ; 
 int /*<<< orphan*/  NN_PROTOCOL ; 
 int /*<<< orphan*/  NN_SOL_SOCKET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,size_t*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int,int) ; 

int FUNC5 ()
{
    int rc;
    int s;
    int op;
    size_t opsz;

    s = FUNC4 (AF_SP, NN_PAIR);

    opsz = sizeof (op);
    rc = FUNC2 (s, NN_SOL_SOCKET, NN_DOMAIN, &op, &opsz);
    FUNC0 (rc == 0);
    FUNC1 (opsz == sizeof (op));
    FUNC1 (op == AF_SP);

    opsz = sizeof (op);
    rc = FUNC2 (s, NN_SOL_SOCKET, NN_PROTOCOL, &op, &opsz);
    FUNC0 (rc == 0);
    FUNC1 (opsz == sizeof (op));
    FUNC1 (op == NN_PAIR);

    FUNC3 (s);

    return 0;
}