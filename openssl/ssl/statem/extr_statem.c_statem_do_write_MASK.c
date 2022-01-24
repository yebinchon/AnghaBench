#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ hand_state; } ;
struct TYPE_8__ {TYPE_2__ statem; } ;
typedef  TYPE_1__ SSL ;
typedef  TYPE_2__ OSSL_STATEM ;

/* Variables and functions */
 int /*<<< orphan*/  SSL3_RT_CHANGE_CIPHER_SPEC ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 scalar_t__ TLS_ST_CW_CHANGE ; 
 scalar_t__ TLS_ST_SW_CHANGE ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC4(SSL *s)
{
    OSSL_STATEM *st = &s->statem;

    if (st->hand_state == TLS_ST_CW_CHANGE
        || st->hand_state == TLS_ST_SW_CHANGE) {
        if (FUNC0(s))
            return FUNC1(s, SSL3_RT_CHANGE_CIPHER_SPEC);
        else
            return FUNC2(s, SSL3_RT_CHANGE_CIPHER_SPEC);
    } else {
        return FUNC3(s);
    }
}