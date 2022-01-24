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
struct TYPE_3__ {int /*<<< orphan*/  nid; } ;
typedef  int /*<<< orphan*/  ENGINE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 size_t FUNC2 (TYPE_1__*) ; 
 TYPE_1__* cipher_data ; 
 scalar_t__ FUNC3 (size_t) ; 
 int /*<<< orphan*/ * known_cipher_nids ; 
 scalar_t__ known_cipher_nids_amount ; 

__attribute__((used)) static void FUNC4(ENGINE *e)
{
    size_t i;

    for (i = 0, known_cipher_nids_amount = 0; i < FUNC2(cipher_data); i++) {
        if (FUNC3(i))
            known_cipher_nids[known_cipher_nids_amount++] = cipher_data[i].nid;
    }
    FUNC1(e);
    FUNC0(e);
}