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
struct TemplatePacket {scalar_t__ offset_tcp; scalar_t__ length; int /*<<< orphan*/  packet; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 

__attribute__((used)) static unsigned
FUNC1(struct TemplatePacket *tmpl)
{
    return FUNC0(
                         tmpl->packet,
                         tmpl->offset_tcp,
                         tmpl->length - tmpl->offset_tcp);
}