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
struct options {scalar_t__ forward_compatible; } ;

/* Variables and functions */
 int M_WARN ; 

__attribute__((used)) static inline int
FUNC0(struct options *options, const int msglevel)
{
    return options->forward_compatible ? M_WARN : msglevel;
}