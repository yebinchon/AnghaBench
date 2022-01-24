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
struct mp_decoder_list {int dummy; } ;
typedef  enum AVMediaType { ____Placeholder_AVMediaType } AVMediaType ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mp_decoder_list*,int,int) ; 

void FUNC1(struct mp_decoder_list *list, enum AVMediaType type)
{
    FUNC0(list, type, true);
}