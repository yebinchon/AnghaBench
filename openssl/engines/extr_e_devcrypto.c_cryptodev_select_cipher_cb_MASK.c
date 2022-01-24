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
typedef  int /*<<< orphan*/  EVP_CIPHER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char const*,int) ; 
 size_t FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC6(const char *str, int len, void *usr)
{
    int *cipher_list = (int *)usr;
    char *name;
    const EVP_CIPHER *EVP;
    size_t i;

    if (len == 0)
        return 1;
    if (usr == NULL || (name = FUNC3(str, len)) == NULL)
        return 0;
    EVP = FUNC1(name);
    if (EVP == NULL)
        FUNC5(stderr, "devcrypto: unknown cipher %s\n", name);
    else if ((i = FUNC4(FUNC0(EVP))) != (size_t)-1)
        cipher_list[i] = 1;
    else
        FUNC5(stderr, "devcrypto: cipher %s not available\n", name);
    FUNC2(name);
    return 1;
}