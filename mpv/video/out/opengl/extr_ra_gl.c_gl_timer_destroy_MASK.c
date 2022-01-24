#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ra {int dummy; } ;
struct gl_timer {int /*<<< orphan*/  query; } ;
typedef  struct gl_timer ra_timer ;
struct TYPE_3__ {int /*<<< orphan*/  (* DeleteQueries ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_1__ GL ;

/* Variables and functions */
 int /*<<< orphan*/  GL_QUERY_OBJECT_NUM ; 
 TYPE_1__* FUNC0 (struct ra*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct gl_timer*) ; 

__attribute__((used)) static void FUNC3(struct ra *ra, ra_timer *ratimer)
{
    if (!ratimer)
        return;

    GL *gl = FUNC0(ra);
    struct gl_timer *timer = ratimer;

    gl->DeleteQueries(GL_QUERY_OBJECT_NUM, timer->query);
    FUNC2(timer);
}