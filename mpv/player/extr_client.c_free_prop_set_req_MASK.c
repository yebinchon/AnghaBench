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
struct setproperty_request {int /*<<< orphan*/  data; int /*<<< orphan*/  format; } ;
struct m_option {int dummy; } ;

/* Variables and functions */
 struct m_option* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct m_option const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(void *ptr)
{
    struct setproperty_request *req = ptr;
    const struct m_option *type = FUNC0(req->format);
    FUNC1(type, req->data);
}