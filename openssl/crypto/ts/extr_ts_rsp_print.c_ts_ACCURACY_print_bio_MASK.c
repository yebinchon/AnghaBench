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
struct TYPE_3__ {int /*<<< orphan*/ * micros; int /*<<< orphan*/ * millis; int /*<<< orphan*/ * seconds; } ;
typedef  TYPE_1__ TS_ACCURACY ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(BIO *bio, const TS_ACCURACY *a)
{
    if (a->seconds != NULL)
        FUNC1(bio, a->seconds);
    else
        FUNC0(bio, "unspecified");
    FUNC0(bio, " seconds, ");
    if (a->millis != NULL)
        FUNC1(bio, a->millis);
    else
        FUNC0(bio, "unspecified");
    FUNC0(bio, " millis, ");
    if (a->micros != NULL)
        FUNC1(bio, a->micros);
    else
        FUNC0(bio, "unspecified");
    FUNC0(bio, " micros");

    return 1;
}