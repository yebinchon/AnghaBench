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
typedef  int /*<<< orphan*/  X509_STORE_CTX ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int X509_V_ERR_NO_EXPLICIT_POLICY ; 
 int X509_V_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int verify_err ; 

__attribute__((used)) static int FUNC2(int ok, X509_STORE_CTX *ctx)
{
    int error;

    error = FUNC0(ctx);

    verify_err = error;

    if ((error != X509_V_ERR_NO_EXPLICIT_POLICY)
        && ((error != X509_V_OK) || (ok != 2)))
        return ok;

    FUNC1(ctx);

    return ok;

}