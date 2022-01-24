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
struct wined3d_timestamp_query {scalar_t__ context; } ;
struct wined3d_query {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wined3d_timestamp_query*) ; 
 int /*<<< orphan*/  FUNC1 (struct wined3d_timestamp_query*) ; 
 struct wined3d_timestamp_query* FUNC2 (struct wined3d_query*) ; 

__attribute__((used)) static void FUNC3(struct wined3d_query *query)
{
    struct wined3d_timestamp_query *tq = FUNC2(query);

    if (tq->context)
        FUNC0(tq);
    FUNC1(tq);
}