#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  time_t ;
typedef  int /*<<< orphan*/  calculated_number ;
struct TYPE_6__ {int result_options; int /*<<< orphan*/  before; int /*<<< orphan*/  after; } ;
typedef  int /*<<< orphan*/  RRDSET ;
typedef  TYPE_1__ RRDR ;
typedef  int /*<<< orphan*/  BUFFER ;

/* Variables and functions */
 int HTTP_RESP_BAD_REQUEST ; 
 int HTTP_RESP_INTERNAL_SERVER_ERROR ; 
 int HTTP_RESP_OK ; 
 int RRDR_OPTION_REVERSED ; 
 int RRDR_RESULT_OPTION_ABSOLUTE ; 
 int RRDR_RESULT_OPTION_RELATIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,long,long long,long long,int,long,int,char const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,long,int,int*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int FUNC5 (TYPE_1__*) ; 

int FUNC6(
          RRDSET *st
        , BUFFER *wb
        , calculated_number *n
        , const char *dimensions
        , long points
        , long long after
        , long long before
        , int group_method
        , long group_time
        , uint32_t options
        , time_t *db_after
        , time_t *db_before
        , int *value_is_null
) {
    RRDR *r = FUNC2(st, points, after, before, group_method, group_time, options, dimensions);
    if(!r) {
        if(value_is_null) *value_is_null = 1;
        return HTTP_RESP_INTERNAL_SERVER_ERROR;
    }

    if(FUNC5(r) == 0) {
        FUNC4(r);

        if(db_after)  *db_after  = 0;
        if(db_before) *db_before = 0;
        if(value_is_null) *value_is_null = 1;

        return HTTP_RESP_BAD_REQUEST;
    }

    if(wb) {
        if (r->result_options & RRDR_RESULT_OPTION_RELATIVE)
            FUNC1(wb);
        else if (r->result_options & RRDR_RESULT_OPTION_ABSOLUTE)
            FUNC0(wb);
    }

    if(db_after)  *db_after  = r->after;
    if(db_before) *db_before = r->before;

    long i = (!(options & RRDR_OPTION_REVERSED))?FUNC5(r) - 1:0;
    *n = FUNC3(r, i, options, value_is_null);

    FUNC4(r);
    return HTTP_RESP_OK;
}