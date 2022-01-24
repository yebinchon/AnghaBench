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
typedef  int /*<<< orphan*/  OSSL_NAMEMAP ;
typedef  int /*<<< orphan*/  EVP_MD ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(void)
{
    int id;
    OSSL_NAMEMAP *nm = FUNC6(NULL);
    const EVP_MD *sha256, *foo;

    id = FUNC5(nm, 0, "SHA256");
    if (!FUNC2(id, 0))
        return 0;
    if (!FUNC1(FUNC5(nm, id, "foo"), id))
        return 0;

    sha256 = FUNC0("SHA256");
    if (!FUNC3(sha256))
        return 0;
    foo = FUNC0("foo");
    if (!FUNC4(sha256, foo))
        return 0;

    return 1;
}