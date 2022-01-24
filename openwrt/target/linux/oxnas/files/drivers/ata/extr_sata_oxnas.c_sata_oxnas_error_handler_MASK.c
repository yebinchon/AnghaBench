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
struct ata_port {int /*<<< orphan*/  host; int /*<<< orphan*/  port_no; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ata_port*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ata_port*) ; 
 int /*<<< orphan*/  FUNC4 (struct ata_port*) ; 

__attribute__((used)) static void FUNC5(struct ata_port *ap)
{
	FUNC0("Enter port_no %d\n", ap->port_no);
	FUNC3(ap);

	/* If the core is busy here, make it idle */
	FUNC2(ap->host);

	FUNC1(ap);

	FUNC4(ap);
}