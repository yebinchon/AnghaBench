#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_3__ ;
typedef  struct TYPE_26__   TYPE_2__ ;
typedef  struct TYPE_25__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  time_t ;
struct TYPE_27__ {void* contenttype; } ;
struct TYPE_26__ {int result_options; int /*<<< orphan*/  before; } ;
struct TYPE_25__ {int /*<<< orphan*/  last_accessed_time; } ;
typedef  TYPE_1__ RRDSET ;
typedef  TYPE_2__ RRDR ;
typedef  TYPE_3__ BUFFER ;

/* Variables and functions */
 void* CT_APPLICATION_JSON ; 
 void* CT_APPLICATION_X_JAVASCRIPT ; 
 void* CT_TEXT_HTML ; 
 void* CT_TEXT_PLAIN ; 
#define  DATASOURCE_CSV 139 
#define  DATASOURCE_CSV_JSON_ARRAY 138 
#define  DATASOURCE_CSV_MARKDOWN 137 
#define  DATASOURCE_DATATABLE_JSON 136 
#define  DATASOURCE_DATATABLE_JSONP 135 
#define  DATASOURCE_HTML 134 
#define  DATASOURCE_JSON 133 
#define  DATASOURCE_JSONP 132 
#define  DATASOURCE_JS_ARRAY 131 
#define  DATASOURCE_SSV 130 
#define  DATASOURCE_SSV_COMMA 129 
#define  DATASOURCE_TSV 128 
 int HTTP_RESP_INTERNAL_SERVER_ERROR ; 
 int HTTP_RESP_OK ; 
 int RRDR_OPTION_JSON_WRAP ; 
 int RRDR_OPTION_LABEL_QUOTES ; 
 int RRDR_RESULT_OPTION_ABSOLUTE ; 
 int RRDR_RESULT_OPTION_RELATIVE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_2__* FUNC5 (TYPE_1__*,long,long long,long long,int,long,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,TYPE_3__*,int,int,char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,TYPE_3__*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,TYPE_3__*,int,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,TYPE_3__*,int,int,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,TYPE_3__*,int,int,int) ; 
 scalar_t__ FUNC12 (TYPE_2__*) ; 

int FUNC13(
          RRDSET *st
        , BUFFER *wb
        , BUFFER *dimensions
        , uint32_t format
        , long points
        , long long after
        , long long before
        , int group_method
        , long group_time
        , uint32_t options
        , time_t *latest_timestamp
) {
    st->last_accessed_time = FUNC4();

    RRDR *r = FUNC5(st, points, after, before, group_method, group_time, options, dimensions?FUNC3(dimensions):NULL);
    if(!r) {
        FUNC2(wb, "Cannot generate output with these parameters on this chart.");
        return HTTP_RESP_INTERNAL_SERVER_ERROR;
    }

    if(r->result_options & RRDR_RESULT_OPTION_RELATIVE)
        FUNC1(wb);
    else if(r->result_options & RRDR_RESULT_OPTION_ABSOLUTE)
        FUNC0(wb);

    if(latest_timestamp && FUNC12(r) > 0)
        *latest_timestamp = r->before;

    switch(format) {
    case DATASOURCE_SSV:
        if(options & RRDR_OPTION_JSON_WRAP) {
            wb->contenttype = CT_APPLICATION_JSON;
            FUNC10(r, wb, format, options, 1);
            FUNC8(r, wb, options, "", " ", "");
            FUNC11(r, wb, format, options, 1);
        }
        else {
            wb->contenttype = CT_TEXT_PLAIN;
            FUNC8(r, wb, options, "", " ", "");
        }
        break;

    case DATASOURCE_SSV_COMMA:
        if(options & RRDR_OPTION_JSON_WRAP) {
            wb->contenttype = CT_APPLICATION_JSON;
            FUNC10(r, wb, format, options, 1);
            FUNC8(r, wb, options, "", ",", "");
            FUNC11(r, wb, format, options, 1);
        }
        else {
            wb->contenttype = CT_TEXT_PLAIN;
            FUNC8(r, wb, options, "", ",", "");
        }
        break;

    case DATASOURCE_JS_ARRAY:
        if(options & RRDR_OPTION_JSON_WRAP) {
            wb->contenttype = CT_APPLICATION_JSON;
            FUNC10(r, wb, format, options, 0);
            FUNC8(r, wb, options, "[", ",", "]");
            FUNC11(r, wb, format, options, 0);
        }
        else {
            wb->contenttype = CT_APPLICATION_JSON;
            FUNC8(r, wb, options, "[", ",", "]");
        }
        break;

    case DATASOURCE_CSV:
        if(options & RRDR_OPTION_JSON_WRAP) {
            wb->contenttype = CT_APPLICATION_JSON;
            FUNC10(r, wb, format, options, 1);
            FUNC6(r, wb, format, options, "", ",", "\\n", "");
            FUNC11(r, wb, format, options, 1);
        }
        else {
            wb->contenttype = CT_TEXT_PLAIN;
            FUNC6(r, wb, format, options, "", ",", "\r\n", "");
        }
        break;

    case DATASOURCE_CSV_MARKDOWN:
        if(options & RRDR_OPTION_JSON_WRAP) {
            wb->contenttype = CT_APPLICATION_JSON;
            FUNC10(r, wb, format, options, 1);
            FUNC6(r, wb, format, options, "", "|", "\\n", "");
            FUNC11(r, wb, format, options, 1);
        }
        else {
            wb->contenttype = CT_TEXT_PLAIN;
            FUNC6(r, wb, format, options, "", "|", "\r\n", "");
        }
        break;

    case DATASOURCE_CSV_JSON_ARRAY:
        wb->contenttype = CT_APPLICATION_JSON;
        if(options & RRDR_OPTION_JSON_WRAP) {
            FUNC10(r, wb, format, options, 0);
            FUNC2(wb, "[\n");
            FUNC6(r, wb, format, options + RRDR_OPTION_LABEL_QUOTES, "[", ",", "]", ",\n");
            FUNC2(wb, "\n]");
            FUNC11(r, wb, format, options, 0);
        }
        else {
            wb->contenttype = CT_APPLICATION_JSON;
            FUNC2(wb, "[\n");
            FUNC6(r, wb, format, options + RRDR_OPTION_LABEL_QUOTES, "[", ",", "]", ",\n");
            FUNC2(wb, "\n]");
        }
        break;

    case DATASOURCE_TSV:
        if(options & RRDR_OPTION_JSON_WRAP) {
            wb->contenttype = CT_APPLICATION_JSON;
            FUNC10(r, wb, format, options, 1);
            FUNC6(r, wb, format, options, "", "\t", "\\n", "");
            FUNC11(r, wb, format, options, 1);
        }
        else {
            wb->contenttype = CT_TEXT_PLAIN;
            FUNC6(r, wb, format, options, "", "\t", "\r\n", "");
        }
        break;

    case DATASOURCE_HTML:
        if(options & RRDR_OPTION_JSON_WRAP) {
            wb->contenttype = CT_APPLICATION_JSON;
            FUNC10(r, wb, format, options, 1);
            FUNC2(wb, "<html>\\n<center>\\n<table border=\\\"0\\\" cellpadding=\\\"5\\\" cellspacing=\\\"5\\\">\\n");
            FUNC6(r, wb, format, options, "<tr><td>", "</td><td>", "</td></tr>\\n", "");
            FUNC2(wb, "</table>\\n</center>\\n</html>\\n");
            FUNC11(r, wb, format, options, 1);
        }
        else {
            wb->contenttype = CT_TEXT_HTML;
            FUNC2(wb, "<html>\n<center>\n<table border=\"0\" cellpadding=\"5\" cellspacing=\"5\">\n");
            FUNC6(r, wb, format, options, "<tr><td>", "</td><td>", "</td></tr>\n", "");
            FUNC2(wb, "</table>\n</center>\n</html>\n");
        }
        break;

    case DATASOURCE_DATATABLE_JSONP:
        wb->contenttype = CT_APPLICATION_X_JAVASCRIPT;

        if(options & RRDR_OPTION_JSON_WRAP)
            FUNC10(r, wb, format, options, 0);

        FUNC7(r, wb, options, 1);

        if(options & RRDR_OPTION_JSON_WRAP)
            FUNC11(r, wb, format, options, 0);
        break;

    case DATASOURCE_DATATABLE_JSON:
        wb->contenttype = CT_APPLICATION_JSON;

        if(options & RRDR_OPTION_JSON_WRAP)
            FUNC10(r, wb, format, options, 0);

        FUNC7(r, wb, options, 1);

        if(options & RRDR_OPTION_JSON_WRAP)
            FUNC11(r, wb, format, options, 0);
        break;

    case DATASOURCE_JSONP:
        wb->contenttype = CT_APPLICATION_X_JAVASCRIPT;
        if(options & RRDR_OPTION_JSON_WRAP)
            FUNC10(r, wb, format, options, 0);

        FUNC7(r, wb, options, 0);

        if(options & RRDR_OPTION_JSON_WRAP)
            FUNC11(r, wb, format, options, 0);
        break;

    case DATASOURCE_JSON:
    default:
        wb->contenttype = CT_APPLICATION_JSON;

        if(options & RRDR_OPTION_JSON_WRAP)
            FUNC10(r, wb, format, options, 0);

        FUNC7(r, wb, options, 0);

        if(options & RRDR_OPTION_JSON_WRAP)
            FUNC11(r, wb, format, options, 0);
        break;
    }

    FUNC9(r);
    return HTTP_RESP_OK;
}