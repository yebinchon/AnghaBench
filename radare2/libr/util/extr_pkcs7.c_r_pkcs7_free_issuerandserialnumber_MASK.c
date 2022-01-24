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
struct TYPE_3__ {int /*<<< orphan*/  serialNumber; int /*<<< orphan*/  issuer; } ;
typedef  TYPE_1__ RPKCS7IssuerAndSerialNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(RPKCS7IssuerAndSerialNumber *iasu) {
	if (iasu) {
		FUNC1 (&iasu->issuer);
		FUNC0 (iasu->serialNumber);
		// Used internally pkcs #7, so it shouldn't free iasu.
	}
}