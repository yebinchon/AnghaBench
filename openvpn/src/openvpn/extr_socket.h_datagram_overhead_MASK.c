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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int PROTO_N ; 
 int* proto_overhead ; 

__attribute__((used)) static inline int
FUNC1(int proto)
{
    FUNC0(proto >= 0 && proto < PROTO_N);
    return proto_overhead [proto];
}