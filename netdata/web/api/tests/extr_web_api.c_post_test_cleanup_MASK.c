#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  header_output; int /*<<< orphan*/  header; int /*<<< orphan*/  data; } ;
struct web_client {TYPE_1__ response; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct web_client*) ; 
 struct web_client* localhost ; 

__attribute__((used)) static void FUNC2(struct web_client *w)
{
    FUNC0(w->response.data);
    FUNC0(w->response.header);
    FUNC0(w->response.header_output);
    FUNC1(w);
    FUNC1(localhost);
}