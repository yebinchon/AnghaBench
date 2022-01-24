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
typedef  struct TemplateSet {unsigned int count; struct TemplatePacket* pkts; } const TemplateSet ;
struct TemplatePacket {int length; struct TemplateSet const* packet; } ;
typedef  int /*<<< orphan*/  result ;

/* Variables and functions */
 struct TemplateSet const* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct TemplateSet const*,struct TemplateSet const*,int) ; 

struct TemplateSet FUNC2(const struct TemplateSet *templset)
{
    struct TemplateSet result;
    unsigned i;

    FUNC1(&result, templset, sizeof(result));

    for (i=0; i<templset->count; i++) {
        const struct TemplatePacket *p1 = &templset->pkts[i];
        struct TemplatePacket *p2 = &result.pkts[i];
        p2->packet = FUNC0(p2->length);
        FUNC1(p2->packet, p1->packet, p2->length);
    }

    return result;
}