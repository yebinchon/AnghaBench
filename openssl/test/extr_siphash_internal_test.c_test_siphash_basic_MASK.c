#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ SIPHASH ;

/* Variables and functions */
 int SIPHASH_KEY_SIZE ; 
 int SIPHASH_MAX_DIGEST_SIZE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,unsigned char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(void)
{
    SIPHASH siphash = { 0, };
    unsigned char key[SIPHASH_KEY_SIZE];
    unsigned char output[SIPHASH_MAX_DIGEST_SIZE];

    /* Use invalid hash size */
    return FUNC3(FUNC2(&siphash, 4), 0)
           /* Use hash size = 8 */
           && FUNC4(FUNC2(&siphash, 8))
           && FUNC4(FUNC1(&siphash, key, 0, 0))
           && FUNC4(FUNC0(&siphash, output, 8))
           && FUNC3(FUNC0(&siphash, output, 16), 0)

           /* Use hash size = 16 */
           && FUNC4(FUNC2(&siphash, 16))
           && FUNC4(FUNC1(&siphash, key, 0, 0))
           && FUNC3(FUNC0(&siphash, output, 8), 0)
           && FUNC4(FUNC0(&siphash, output, 16))

           /* Use hash size = 0 (default = 16) */
           && FUNC4(FUNC2(&siphash, 0))
           && FUNC4(FUNC1(&siphash, key, 0, 0))
           && FUNC3(FUNC0(&siphash, output, 8), 0)
           && FUNC4(FUNC0(&siphash, output, 16));
}