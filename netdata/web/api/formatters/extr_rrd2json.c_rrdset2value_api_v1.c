
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
typedef int time_t ;
typedef int calculated_number ;
struct TYPE_6__ {int result_options; int before; int after; } ;
typedef int RRDSET ;
typedef TYPE_1__ RRDR ;
typedef int BUFFER ;


 int HTTP_RESP_BAD_REQUEST ;
 int HTTP_RESP_INTERNAL_SERVER_ERROR ;
 int HTTP_RESP_OK ;
 int RRDR_OPTION_REVERSED ;
 int RRDR_RESULT_OPTION_ABSOLUTE ;
 int RRDR_RESULT_OPTION_RELATIVE ;
 int buffer_cacheable (int *) ;
 int buffer_no_cacheable (int *) ;
 TYPE_1__* rrd2rrdr (int *,long,long long,long long,int,long,int,char const*) ;
 int rrdr2value (TYPE_1__*,long,int,int*) ;
 int rrdr_free (TYPE_1__*) ;
 int rrdr_rows (TYPE_1__*) ;

int rrdset2value_api_v1(
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
    RRDR *r = rrd2rrdr(st, points, after, before, group_method, group_time, options, dimensions);
    if(!r) {
        if(value_is_null) *value_is_null = 1;
        return HTTP_RESP_INTERNAL_SERVER_ERROR;
    }

    if(rrdr_rows(r) == 0) {
        rrdr_free(r);

        if(db_after) *db_after = 0;
        if(db_before) *db_before = 0;
        if(value_is_null) *value_is_null = 1;

        return HTTP_RESP_BAD_REQUEST;
    }

    if(wb) {
        if (r->result_options & RRDR_RESULT_OPTION_RELATIVE)
            buffer_no_cacheable(wb);
        else if (r->result_options & RRDR_RESULT_OPTION_ABSOLUTE)
            buffer_cacheable(wb);
    }

    if(db_after) *db_after = r->after;
    if(db_before) *db_before = r->before;

    long i = (!(options & RRDR_OPTION_REVERSED))?rrdr_rows(r) - 1:0;
    *n = rrdr2value(r, i, options, value_is_null);

    rrdr_free(r);
    return HTTP_RESP_OK;
}
