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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 void* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  OPENSSL_INIT_LOAD_CRYPTO_STRINGS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* b1 ; 
 void* b2 ; 
 void* b3 ; 
 void* b4 ; 
 void* b5 ; 
 int /*<<< orphan*/  ctx ; 

int FUNC4(int *argc, char ***argv)
{
    b1 = FUNC1();
    b2 = FUNC1();
    b3 = FUNC1();
    b4 = FUNC1();
    b5 = FUNC1();
    ctx = FUNC0();

    FUNC3(OPENSSL_INIT_LOAD_CRYPTO_STRINGS, NULL);
    FUNC2();

    return 1;
}