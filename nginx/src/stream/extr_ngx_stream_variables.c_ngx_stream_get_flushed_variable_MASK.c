#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  size_t ngx_uint_t ;
struct TYPE_7__ {scalar_t__ not_found; scalar_t__ valid; int /*<<< orphan*/  no_cacheable; } ;
typedef  TYPE_1__ ngx_stream_variable_value_t ;
struct TYPE_8__ {TYPE_1__* variables; } ;
typedef  TYPE_2__ ngx_stream_session_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (TYPE_2__*,size_t) ; 

ngx_stream_variable_value_t *
FUNC1(ngx_stream_session_t *s, ngx_uint_t index)
{
    ngx_stream_variable_value_t  *v;

    v = &s->variables[index];

    if (v->valid || v->not_found) {
        if (!v->no_cacheable) {
            return v;
        }

        v->valid = 0;
        v->not_found = 0;
    }

    return FUNC0(s, index);
}