#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct gl_shader_cache {TYPE_2__* ra; int /*<<< orphan*/ * next_binding; } ;
typedef  enum ra_vartype { ____Placeholder_ra_vartype } ra_vartype ;
struct TYPE_4__ {TYPE_1__* fns; } ;
struct TYPE_3__ {size_t (* desc_namespace ) (TYPE_2__*,int) ;} ;

/* Variables and functions */
 size_t FUNC0 (TYPE_2__*,int) ; 

__attribute__((used)) static int FUNC1(struct gl_shader_cache *sc, enum ra_vartype type)
{
    return sc->next_binding[sc->ra->fns->desc_namespace(sc->ra, type)]++;
}