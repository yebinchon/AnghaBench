
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int uint32_t ;
typedef int time_t ;
struct TYPE_15__ {TYPE_8__* data; int header; } ;
struct web_client {TYPE_1__ response; int id; } ;
typedef long long calculated_number ;
struct TYPE_18__ {int expires; } ;
struct TYPE_17__ {int update_every; char* units; int status; long long value; } ;
struct TYPE_16__ {int last_accessed_time; int update_every; char* name; char* units; scalar_t__ gap_when_lost_iterations_above; } ;
typedef TYPE_2__ RRDSET ;
typedef int RRDHOST ;
typedef TYPE_3__ RRDCALC ;
typedef int BUFFER ;


 int D_WEB_CLIENT ;
 int HTTP_RESP_BAD_REQUEST ;
 int HTTP_RESP_INTERNAL_SERVER_ERROR ;
 int HTTP_RESP_OK ;
 long long NAN ;





 int RRDR_GROUPING_AVERAGE ;
 int RRDR_OPTION_NOT_ALIGNED ;
 int RRDR_OPTION_PERCENTAGE ;
 int * buffer_create (int) ;
 int buffer_flush (TYPE_8__*) ;
 int buffer_free (int *) ;
 int buffer_no_cacheable (TYPE_8__*) ;
 int buffer_sprintf (TYPE_8__*,char*,...) ;
 int buffer_strcat (int *,char*) ;
 int buffer_svg (TYPE_8__*,char const*,long long,char const*,char const*,char const*,int,int,int,int,int) ;
 char* buffer_tostring (int *) ;
 int debug (int ,char*,int ,char const*,char const*,...) ;
 scalar_t__ isinf (long long) ;
 scalar_t__ isnan (long long) ;
 char* mystrsep (char**,char*) ;
 int now_realtime_sec () ;
 TYPE_3__* rrdcalc_find (TYPE_2__*,char const*) ;
 int rrdset2value_api_v1 (TYPE_2__*,TYPE_8__*,long long*,char*,int,long long,long long,int,int ,int,int *,int *,int*) ;
 TYPE_2__* rrdset_find (int *,char const*) ;
 TYPE_2__* rrdset_find_byname (int *,char const*) ;
 scalar_t__ rrdset_last_entry_t (TYPE_2__*) ;
 int str2i (char const*) ;
 int str2l (char const*) ;
 int strcmp (char const*,char*) ;
 int web_client_api_request_v1_data_group (char*,int) ;
 int web_client_api_request_v1_data_options (char*) ;

int web_client_api_request_v1_badge(RRDHOST *host, struct web_client *w, char *url) {
    int ret = HTTP_RESP_BAD_REQUEST;
    buffer_flush(w->response.data);

    BUFFER *dimensions = ((void*)0);

    const char *chart = ((void*)0)
    , *before_str = ((void*)0)
    , *after_str = ((void*)0)
    , *points_str = ((void*)0)
    , *multiply_str = ((void*)0)
    , *divide_str = ((void*)0)
    , *label = ((void*)0)
    , *units = ((void*)0)
    , *label_color = ((void*)0)
    , *value_color = ((void*)0)
    , *refresh_str = ((void*)0)
    , *precision_str = ((void*)0)
    , *scale_str = ((void*)0)
    , *alarm = ((void*)0)
    , *fixed_width_lbl_str = ((void*)0)
    , *fixed_width_val_str = ((void*)0);

    int group = RRDR_GROUPING_AVERAGE;
    uint32_t options = 0x00000000;

    while(url) {
        char *value = mystrsep(&url, "&");
        if(!value || !*value) continue;

        char *name = mystrsep(&value, "=");
        if(!name || !*name) continue;
        if(!value || !*value) continue;

        debug(D_WEB_CLIENT, "%llu: API v1 badge.svg query param '%s' with value '%s'", w->id, name, value);




        if(!strcmp(name, "chart")) chart = value;
        else if(!strcmp(name, "dimension") || !strcmp(name, "dim") || !strcmp(name, "dimensions") || !strcmp(name, "dims")) {
            if(!dimensions)
                dimensions = buffer_create(100);

            buffer_strcat(dimensions, "|");
            buffer_strcat(dimensions, value);
        }
        else if(!strcmp(name, "after")) after_str = value;
        else if(!strcmp(name, "before")) before_str = value;
        else if(!strcmp(name, "points")) points_str = value;
        else if(!strcmp(name, "group")) {
            group = web_client_api_request_v1_data_group(value, RRDR_GROUPING_AVERAGE);
        }
        else if(!strcmp(name, "options")) {
            options |= web_client_api_request_v1_data_options(value);
        }
        else if(!strcmp(name, "label")) label = value;
        else if(!strcmp(name, "units")) units = value;
        else if(!strcmp(name, "label_color")) label_color = value;
        else if(!strcmp(name, "value_color")) value_color = value;
        else if(!strcmp(name, "multiply")) multiply_str = value;
        else if(!strcmp(name, "divide")) divide_str = value;
        else if(!strcmp(name, "refresh")) refresh_str = value;
        else if(!strcmp(name, "precision")) precision_str = value;
        else if(!strcmp(name, "scale")) scale_str = value;
        else if(!strcmp(name, "fixed_width_lbl")) fixed_width_lbl_str = value;
        else if(!strcmp(name, "fixed_width_val")) fixed_width_val_str = value;
        else if(!strcmp(name, "alarm")) alarm = value;
    }

    int fixed_width_lbl = -1;
    int fixed_width_val = -1;

    if(fixed_width_lbl_str && *fixed_width_lbl_str
        && fixed_width_val_str && *fixed_width_val_str) {
        fixed_width_lbl = str2i(fixed_width_lbl_str);
        fixed_width_val = str2i(fixed_width_val_str);
    }

    if(!chart || !*chart) {
        buffer_no_cacheable(w->response.data);
        buffer_sprintf(w->response.data, "No chart id is given at the request.");
        goto cleanup;
    }

    int scale = (scale_str && *scale_str)?str2i(scale_str):100;

    RRDSET *st = rrdset_find(host, chart);
    if(!st) st = rrdset_find_byname(host, chart);
    if(!st) {
        buffer_no_cacheable(w->response.data);
        buffer_svg(w->response.data, "chart not found", NAN, "", ((void*)0), ((void*)0), -1, scale, 0, -1, -1);
        ret = HTTP_RESP_OK;
        goto cleanup;
    }
    st->last_accessed_time = now_realtime_sec();

    RRDCALC *rc = ((void*)0);
    if(alarm) {
        rc = rrdcalc_find(st, alarm);
        if (!rc) {
            buffer_no_cacheable(w->response.data);
            buffer_svg(w->response.data, "alarm not found", NAN, "", ((void*)0), ((void*)0), -1, scale, 0, -1, -1);
            ret = HTTP_RESP_OK;
            goto cleanup;
        }
    }

    long long multiply = (multiply_str && *multiply_str )?str2l(multiply_str):1;
    long long divide = (divide_str && *divide_str )?str2l(divide_str):1;
    long long before = (before_str && *before_str )?str2l(before_str):0;
    long long after = (after_str && *after_str )?str2l(after_str):-st->update_every;
    int points = (points_str && *points_str )?str2i(points_str):1;
    int precision = (precision_str && *precision_str)?str2i(precision_str):-1;

    if(!multiply) multiply = 1;
    if(!divide) divide = 1;

    int refresh = 0;
    if(refresh_str && *refresh_str) {
        if(!strcmp(refresh_str, "auto")) {
            if(rc) refresh = rc->update_every;
            else if(options & RRDR_OPTION_NOT_ALIGNED)
                refresh = st->update_every;
            else {
                refresh = (int)(before - after);
                if(refresh < 0) refresh = -refresh;
            }
        }
        else {
            refresh = str2i(refresh_str);
            if(refresh < 0) refresh = -refresh;
        }
    }

    if(!label) {
        if(alarm) {
            char *s = (char *)alarm;
            while(*s) {
                if(*s == '_') *s = ' ';
                s++;
            }
            label = alarm;
        }
        else if(dimensions) {
            const char *dim = buffer_tostring(dimensions);
            if(*dim == '|') dim++;
            label = dim;
        }
        else
            label = st->name;
    }
    if(!units) {
        if(alarm) {
            if(rc->units)
                units = rc->units;
            else
                units = "";
        }
        else if(options & RRDR_OPTION_PERCENTAGE)
            units = "%";
        else
            units = st->units;
    }

    debug(D_WEB_CLIENT, "%llu: API command 'badge.svg' for chart '%s', alarm '%s', dimensions '%s', after '%lld', before '%lld', points '%d', group '%d', options '0x%08x'"
          , w->id
          , chart
          , alarm?alarm:""
          , (dimensions)?buffer_tostring(dimensions):""
          , after
          , before
          , points
          , group
          , options
    );

    if(rc) {
        if (refresh > 0) {
            buffer_sprintf(w->response.header, "Refresh: %d\r\n", refresh);
            w->response.data->expires = now_realtime_sec() + refresh;
        }
        else buffer_no_cacheable(w->response.data);

        if(!value_color) {
            switch(rc->status) {
                case 131:
                    value_color = "red";
                    break;

                case 128:
                    value_color = "orange";
                    break;

                case 132:
                    value_color = "brightgreen";
                    break;

                case 130:
                    value_color = "lightgrey";
                    break;

                case 129:
                    value_color = "#000";
                    break;

                default:
                    value_color = "grey";
                    break;
            }
        }

        buffer_svg(w->response.data,
                label,
                (isnan(rc->value)||isinf(rc->value)) ? rc->value : rc->value * multiply / divide,
                units,
                label_color,
                value_color,
                precision,
                scale,
                options,
                fixed_width_lbl,
                fixed_width_val
        );
        ret = HTTP_RESP_OK;
    }
    else {
        time_t latest_timestamp = 0;
        int value_is_null = 1;
        calculated_number n = NAN;
        ret = HTTP_RESP_INTERNAL_SERVER_ERROR;


        if (rrdset_last_entry_t(st) >= (now_realtime_sec() - (st->update_every * st->gap_when_lost_iterations_above)))
            ret = rrdset2value_api_v1(st, w->response.data, &n, (dimensions) ? buffer_tostring(dimensions) : ((void*)0)
                                      , points, after, before, group, 0, options, ((void*)0), &latest_timestamp, &value_is_null);


        if (ret != HTTP_RESP_OK) {
            buffer_no_cacheable(w->response.data);
            value_is_null = 1;
            n = 0;
            ret = HTTP_RESP_OK;
        }
        else if (refresh > 0) {
            buffer_sprintf(w->response.header, "Refresh: %d\r\n", refresh);
            w->response.data->expires = now_realtime_sec() + refresh;
        }
        else buffer_no_cacheable(w->response.data);


        buffer_svg(w->response.data,
                label,
                (value_is_null)?NAN:(n * multiply / divide),
                units,
                label_color,
                value_color,
                precision,
                scale,
                options,
                fixed_width_lbl,
                fixed_width_val
        );
    }

    cleanup:
    buffer_free(dimensions);
    return ret;
}
