#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_10__ {scalar_t__ seconds; } ;
typedef  TYPE_1__ const nfstime4 ;

/* Variables and functions */
 int /*<<< orphan*/  SET_TO_CLIENT_TIME4 ; 
 int /*<<< orphan*/  SET_TO_SERVER_TIME4 ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__ const*,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*) ; 

__attribute__((used)) static uint32_t FUNC3(
    nfstime4 *newtime,
    const nfstime4 *time_delta)
{
    nfstime4 current;
    FUNC0(&current);
    /* get the absolute difference between current and newtime */
    FUNC2(&current, newtime, &current);
    FUNC1(&current, &current);
    /* compare the difference with time_delta */
    FUNC2(time_delta, &current, &current);
    /* use client time if diff > delta (i.e. time_delta - current < 0) */
    return current.seconds < 0 ? SET_TO_CLIENT_TIME4 : SET_TO_SERVER_TIME4;
}