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
struct lwan_url_map {char* prefix; int /*<<< orphan*/  member_1; struct index* data; int /*<<< orphan*/  handler; } ;
struct lwan {int dummy; } ;
struct index {char* title; char* variant; int width; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  blocks ; 
 int /*<<< orphan*/  clock ; 
 int /*<<< orphan*/  dali ; 
 int /*<<< orphan*/  FUNC2 (struct lwan*) ; 
 int /*<<< orphan*/  FUNC3 (struct lwan*) ; 
 int /*<<< orphan*/  FUNC4 (struct lwan*,struct lwan_url_map const*) ; 
 int /*<<< orphan*/  FUNC5 (struct lwan*) ; 
 int /*<<< orphan*/  templated_index ; 

int FUNC6(void)
{
    struct index sample_clock = {
        .title = "Lwan Sample Clock",
        .variant = "clock",
        .width = 200,
    };
    struct index dali_clock = {
        .title = "Lwan Dali Clock",
        .variant = "dali",
        .width = 320,
    };
    struct index blocks_clock = {
        .title = "Lwan Blocks Clock",
        .variant = "blocks",
        .width = 320,
    };
    const struct lwan_url_map default_map[] = {
        {
            .prefix = "/clock.gif",
            .handler = FUNC0(clock),
        },
        {
            .prefix = "/dali.gif",
            .handler = FUNC0(dali),
        },
        {
            .prefix = "/blocks.gif",
            .handler = FUNC0(blocks),
        },
        {
            .prefix = "/clock",
            .handler = FUNC0(templated_index),
            .data = &sample_clock,
        },
        {
            .prefix = "/dali",
            .handler = FUNC0(templated_index),
            .data = &dali_clock,
        },
        {
            .prefix = "/blocks",
            .handler = FUNC0(templated_index),
            .data = &blocks_clock,
        },
        {
            .prefix = "/",
            FUNC1("/clock"),
        },
        {},
    };
    struct lwan l;

    FUNC2(&l);

    FUNC4(&l, default_map);
    FUNC3(&l);

    FUNC5(&l);

    return 0;
}