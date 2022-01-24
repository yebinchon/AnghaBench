#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ time_t ;
struct TYPE_8__ {int /*<<< orphan*/ * data; int /*<<< orphan*/  header; } ;
struct web_client {TYPE_2__ response; int /*<<< orphan*/  id; } ;
struct TYPE_7__ {int /*<<< orphan*/  tv_sec; } ;
struct TYPE_9__ {TYPE_1__ last_updated; int /*<<< orphan*/  last_accessed_time; } ;
typedef  TYPE_3__ RRDSET ;
typedef  int /*<<< orphan*/  RRDHOST ;
typedef  int /*<<< orphan*/  BUFFER ;

/* Variables and functions */
 scalar_t__ DATASOURCE_DATATABLE_JSONP ; 
 scalar_t__ DATASOURCE_JSON ; 
 scalar_t__ DATASOURCE_JSONP ; 
 int /*<<< orphan*/  D_WEB_CLIENT ; 
 int /*<<< orphan*/  D_WEB_CLIENT_ACCESS ; 
 int HTTP_RESP_BAD_REQUEST ; 
 int HTTP_RESP_NOT_FOUND ; 
 int RRDR_GROUPING_AVERAGE ; 
 int /*<<< orphan*/ * FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 char* FUNC9 (char**,char*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int FUNC11 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,int,long long,long long,int,long,scalar_t__,scalar_t__*) ; 
 TYPE_3__* FUNC12 (int /*<<< orphan*/ *,char*) ; 
 TYPE_3__* FUNC13 (int /*<<< orphan*/ *,char*) ; 
 int FUNC14 (char*) ; 
 void* FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (char*,char*) ; 
 scalar_t__ FUNC17 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (char*) ; 
 scalar_t__ FUNC19 (char*) ; 
 int FUNC20 (char*,int) ; 
 scalar_t__ FUNC21 (char*) ; 

inline int FUNC22(RRDHOST *host, struct web_client *w, char *url) {
    FUNC7(D_WEB_CLIENT, "%llu: API v1 data with URL '%s'", w->id, url);

    int ret = HTTP_RESP_BAD_REQUEST;
    BUFFER *dimensions = NULL;

    FUNC1(w->response.data);

    char    *google_version = "0.6",
            *google_reqId = "0",
            *google_sig = "0",
            *google_out = "json",
            *responseHandler = NULL,
            *outFileName = NULL;

    time_t last_timestamp_in_data = 0, google_timestamp = 0;

    char *chart = NULL
    , *before_str = NULL
    , *after_str = NULL
    , *group_time_str = NULL
    , *points_str = NULL;

    int group = RRDR_GROUPING_AVERAGE;
    uint32_t format = DATASOURCE_JSON;
    uint32_t options = 0x00000000;

    while(url) {
        char *value = FUNC9(&url, "&");
        if(!value || !*value) continue;

        char *name = FUNC9(&value, "=");
        if(!name || !*name) continue;
        if(!value || !*value) continue;

        FUNC7(D_WEB_CLIENT, "%llu: API v1 data query param '%s' with value '%s'", w->id, name, value);

        // name and value are now the parameters
        // they are not null and not empty

        if(!FUNC16(name, "chart")) chart = value;
        else if(!FUNC16(name, "dimension") || !FUNC16(name, "dim") || !FUNC16(name, "dimensions") || !FUNC16(name, "dims")) {
            if(!dimensions) dimensions = FUNC0(100);
            FUNC4(dimensions, "|");
            FUNC4(dimensions, value);
        }
        else if(!FUNC16(name, "after")) after_str = value;
        else if(!FUNC16(name, "before")) before_str = value;
        else if(!FUNC16(name, "points")) points_str = value;
        else if(!FUNC16(name, "gtime")) group_time_str = value;
        else if(!FUNC16(name, "group")) {
            group = FUNC20(value, RRDR_GROUPING_AVERAGE);
        }
        else if(!FUNC16(name, "format")) {
            format = FUNC18(value);
        }
        else if(!FUNC16(name, "options")) {
            options |= FUNC21(value);
        }
        else if(!FUNC16(name, "callback")) {
            responseHandler = value;
        }
        else if(!FUNC16(name, "filename")) {
            outFileName = value;
        }
        else if(!FUNC16(name, "tqx")) {
            // parse Google Visualization API options
            // https://developers.google.com/chart/interactive/docs/dev/implementing_data_source
            char *tqx_name, *tqx_value;

            while(value) {
                tqx_value = FUNC9(&value, ";");
                if(!tqx_value || !*tqx_value) continue;

                tqx_name = FUNC9(&tqx_value, ":");
                if(!tqx_name || !*tqx_name) continue;
                if(!tqx_value || !*tqx_value) continue;

                if(!FUNC16(tqx_name, "version"))
                    google_version = tqx_value;
                else if(!FUNC16(tqx_name, "reqId"))
                    google_reqId = tqx_value;
                else if(!FUNC16(tqx_name, "sig")) {
                    google_sig = tqx_value;
                    google_timestamp = FUNC17(google_sig, NULL, 0);
                }
                else if(!FUNC16(tqx_name, "out")) {
                    google_out = tqx_value;
                    format = FUNC19(google_out);
                }
                else if(!FUNC16(tqx_name, "responseHandler"))
                    responseHandler = tqx_value;
                else if(!FUNC16(tqx_name, "outFileName"))
                    outFileName = tqx_value;
            }
        }
    }

    // validate the google parameters given
    FUNC8(google_out);
    FUNC8(google_sig);
    FUNC8(google_reqId);
    FUNC8(google_version);
    FUNC8(responseHandler);
    FUNC8(outFileName);

    if(!chart || !*chart) {
        FUNC3(w->response.data, "No chart id is given at the request.");
        goto cleanup;
    }

    RRDSET *st = FUNC12(host, chart);
    if(!st) st = FUNC13(host, chart);
    if(!st) {
        FUNC4(w->response.data, "Chart is not found: ");
        FUNC5(w->response.data, chart);
        ret = HTTP_RESP_NOT_FOUND;
        goto cleanup;
    }
    st->last_accessed_time = FUNC10();

    long long before = (before_str && *before_str)?FUNC15(before_str):0;
    long long after  = (after_str  && *after_str) ?FUNC15(after_str):0;
    int       points = (points_str && *points_str)?FUNC14(points_str):0;
    long      group_time = (group_time_str && *group_time_str)?FUNC15(group_time_str):0;

    FUNC7(D_WEB_CLIENT, "%llu: API command 'data' for chart '%s', dimensions '%s', after '%lld', before '%lld', points '%d', group '%d', format '%u', options '0x%08x'"
          , w->id
          , chart
          , (dimensions)?FUNC6(dimensions):""
          , after
          , before
          , points
          , group
          , format
          , options
    );

    if(outFileName && *outFileName) {
        FUNC3(&w->response.header, "Content-Disposition: attachment; filename=\"%s\"\r\n", outFileName);
        FUNC7(D_WEB_CLIENT, "%llu: generating outfilename header: '%s'", w->id, outFileName);
    }

    if(format == DATASOURCE_DATATABLE_JSONP) {
        if(responseHandler == NULL)
            responseHandler = "google.visualization.Query.setResponse";

        FUNC7(D_WEB_CLIENT_ACCESS, "%llu: GOOGLE JSON/JSONP: version = '%s', reqId = '%s', sig = '%s', out = '%s', responseHandler = '%s', outFileName = '%s'",
                w->id, google_version, google_reqId, google_sig, google_out, responseHandler, outFileName
        );

        FUNC3(w->response.data,
                "%s({version:'%s',reqId:'%s',status:'ok',sig:'%ld',table:",
                responseHandler, google_version, google_reqId, st->last_updated.tv_sec);
    }
    else if(format == DATASOURCE_JSONP) {
        if(responseHandler == NULL)
            responseHandler = "callback";

        FUNC4(w->response.data, responseHandler);
        FUNC4(w->response.data, "(");
    }

    ret = FUNC11(st, w->response.data, dimensions, format, points, after, before, group, group_time
                                 , options, &last_timestamp_in_data);

    if(format == DATASOURCE_DATATABLE_JSONP) {
        if(google_timestamp < last_timestamp_in_data)
            FUNC4(w->response.data, "});");

        else {
            // the client already has the latest data
            FUNC1(w->response.data);
            FUNC3(w->response.data,
                    "%s({version:'%s',reqId:'%s',status:'error',errors:[{reason:'not_modified',message:'Data not modified'}]});",
                    responseHandler, google_version, google_reqId);
        }
    }
    else if(format == DATASOURCE_JSONP)
        FUNC4(w->response.data, ");");

    cleanup:
    FUNC2(dimensions);
    return ret;
}