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
struct TYPE_3__ {int /*<<< orphan*/  signerinfos; int /*<<< orphan*/  crls; int /*<<< orphan*/  certificates; int /*<<< orphan*/  contentInfo; int /*<<< orphan*/  digestAlgorithms; } ;
typedef  TYPE_1__ RPKCS7SignedData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(RPKCS7SignedData *sd) {
	if (sd) {
		FUNC2 (&sd->digestAlgorithms);
		FUNC1 (&sd->contentInfo);
		FUNC3 (&sd->certificates);
		FUNC0 (&sd->crls);
		FUNC4 (&sd->signerinfos);
		// Used internally pkcs #7, so it shouldn't free sd.
	}
}