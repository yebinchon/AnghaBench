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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  PCCERT_CONTEXT ;

/* Variables and functions */
 int /*<<< orphan*/  CERT_FRIENDLY_NAME_PROP_ID ; 
 int /*<<< orphan*/  CERT_NAME_SIMPLE_DISPLAY_TYPE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static WCHAR *FUNC2(PCCERT_CONTEXT cert)
{
    WCHAR *name = FUNC1(cert, CERT_FRIENDLY_NAME_PROP_ID);

    if (!name)
        name = FUNC0(cert, CERT_NAME_SIMPLE_DISPLAY_TYPE, 0);
    return name;
}