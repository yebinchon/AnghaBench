#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_4__ {int /*<<< orphan*/  p; } ;
typedef  int /*<<< orphan*/ * MP_t ;
typedef  TYPE_1__ MDH ;

/* Variables and functions */
 size_t INT_MAX ; 
 int FUNC0 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  Q1024 ; 
 int /*<<< orphan*/  FUNC4 (size_t) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(MDH *dh, uint8_t *pubkey, size_t nPubkeyLen,
                         uint8_t *secret)
{
    MP_t q1 = NULL, pubkeyBn = NULL;
    size_t len;
    int res;

    if (!dh || !secret || nPubkeyLen >= INT_MAX)
        return -1;

    FUNC2(pubkeyBn, pubkey, nPubkeyLen);
    if (!pubkeyBn)
        return -1;

    FUNC3(q1, Q1024, len);
    FUNC4(len);

    if (FUNC5(pubkeyBn, dh->p, q1))
        res = FUNC0(secret, nPubkeyLen, pubkeyBn, dh);
    else
        res = -1;

    FUNC1(q1);
    FUNC1(pubkeyBn);

    return res;
}