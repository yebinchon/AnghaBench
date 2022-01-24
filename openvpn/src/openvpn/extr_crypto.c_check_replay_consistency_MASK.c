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
struct key_type {int /*<<< orphan*/  cipher; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct key_type const*) ; 
 int /*<<< orphan*/  M_FATAL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

void
FUNC4(const struct key_type *kt, bool packet_id)
{
    FUNC0(kt);

    if (!packet_id && (FUNC2(kt->cipher)
                       || FUNC1(kt->cipher)))
    {
        FUNC3(M_FATAL, "--no-replay cannot be used with a CFB, OFB or AEAD mode cipher");
    }
}