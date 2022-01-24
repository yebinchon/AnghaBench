#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  rlen; TYPE_3__* data; scalar_t__ sent; void* code; } ;
struct TYPE_7__ {scalar_t__ tv_sec; } ;
struct web_client {int mode; int /*<<< orphan*/  id; TYPE_1__ response; TYPE_2__ tv_ready; int /*<<< orphan*/  last_url; int /*<<< orphan*/  decoded_url; TYPE_2__ tv_in; } ;
struct TYPE_8__ {scalar_t__ len; scalar_t__ date; int /*<<< orphan*/  buffer; int /*<<< orphan*/  contenttype; } ;

/* Variables and functions */
 int /*<<< orphan*/  CT_TEXT_HTML ; 
 int /*<<< orphan*/  CT_TEXT_PLAIN ; 
 int /*<<< orphan*/  D_WEB_CLIENT ; 
 int /*<<< orphan*/  D_WEB_CLIENT_ACCESS ; 
 void* HTTP_RESP_BAD_REQUEST ; 
 void* HTTP_RESP_MOVED_PERM ; 
 void* HTTP_RESP_OK ; 
#define  HTTP_VALIDATION_INCOMPLETE 136 
#define  HTTP_VALIDATION_MALFORMED_URL 135 
#define  HTTP_VALIDATION_NOT_SUPPORTED 134 
#define  HTTP_VALIDATION_OK 133 
#define  HTTP_VALIDATION_REDIRECT 132 
 scalar_t__ NETDATA_WEB_REQUEST_MAX_SIZE ; 
#define  WEB_CLIENT_MODE_FILECOPY 131 
#define  WEB_CLIENT_MODE_NORMAL 130 
#define  WEB_CLIENT_MODE_OPTIONS 129 
#define  WEB_CLIENT_MODE_STREAM 128 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct web_client*) ; 
 int /*<<< orphan*/  localhost ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 void* FUNC7 (int /*<<< orphan*/ ,struct web_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (struct web_client*) ; 
 int /*<<< orphan*/  FUNC11 (struct web_client*) ; 
 int /*<<< orphan*/  FUNC12 (struct web_client*) ; 
 int /*<<< orphan*/  FUNC13 (struct web_client*) ; 
 int /*<<< orphan*/  FUNC14 (struct web_client*) ; 
 int /*<<< orphan*/  FUNC15 (struct web_client*) ; 
 int /*<<< orphan*/  FUNC16 (struct web_client*) ; 
 int /*<<< orphan*/  FUNC17 (struct web_client*) ; 
 int /*<<< orphan*/  FUNC18 (struct web_client*) ; 
 int /*<<< orphan*/  FUNC19 (struct web_client*) ; 
 void* FUNC20 (int /*<<< orphan*/ ,struct web_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct web_client*) ; 

void FUNC22(struct web_client *w) {

    // start timing us
    FUNC6(&w->tv_in);

    switch(FUNC5(w)) {
        case HTTP_VALIDATION_OK:
            switch(w->mode) {
                case WEB_CLIENT_MODE_STREAM:
                    if(FUNC9(!FUNC15(w))) {
                        FUNC19(w);
                        return;
                    }

                    w->response.code = FUNC7(localhost, w, w->decoded_url);
                    return;

                case WEB_CLIENT_MODE_OPTIONS:
                    if(FUNC9(
                            !FUNC11(w) &&
                            !FUNC14(w) &&
                            !FUNC10(w) &&
                            !FUNC12(w) &&
                            !FUNC13(w)
                    )) {
                        FUNC19(w);
                        break;
                    }

                    w->response.data->contenttype = CT_TEXT_PLAIN;
                    FUNC0(w->response.data);
                    FUNC2(w->response.data, "OK");
                    w->response.code = HTTP_RESP_OK;
                    break;

                case WEB_CLIENT_MODE_FILECOPY:
                case WEB_CLIENT_MODE_NORMAL:
                    if(FUNC9(
                            !FUNC11(w) &&
                            !FUNC14(w) &&
                            !FUNC10(w) &&
                            !FUNC12(w) &&
                            !FUNC13(w)
                    )) {
                        FUNC19(w);
                        break;
                    }

                    w->response.code = FUNC20(localhost, w, w->decoded_url);
                    break;
            }
            break;

        case HTTP_VALIDATION_INCOMPLETE:
            if(w->response.data->len > NETDATA_WEB_REQUEST_MAX_SIZE) {
                FUNC8(w->last_url, "too big request");

                FUNC3(D_WEB_CLIENT_ACCESS, "%llu: Received request is too big (%zu bytes).", w->id, w->response.data->len);

                FUNC0(w->response.data);
                FUNC1(w->response.data, "Received request is too big  (%zu bytes).\r\n", w->response.data->len);
                w->response.code = HTTP_RESP_BAD_REQUEST;
            }
            else {
                // wait for more data
                return;
            }
            break;
#ifdef ENABLE_HTTPS
        case HTTP_VALIDATION_REDIRECT:
        {
            buffer_flush(w->response.data);
            w->response.data->contenttype = CT_TEXT_HTML;
            buffer_strcat(w->response.data, "<!DOCTYPE html><!-- SPDX-License-Identifier: GPL-3.0-or-later --><html><body onload=\"window.location.href ='https://'+ window.location.hostname + ':' + window.location.port +  window.location.pathname\">Redirecting to safety connection, case your browser does not support redirection, please click <a onclick=\"window.location.href ='https://'+ window.location.hostname + ':' + window.location.port +  window.location.pathname\">here</a>.</body></html>");
            w->response.code = HTTP_RESP_MOVED_PERM;
            break;
        }
#endif
        case HTTP_VALIDATION_MALFORMED_URL:
            FUNC3(D_WEB_CLIENT_ACCESS, "%llu: URL parsing failed (malformed URL). Cannot understand '%s'.", w->id, w->response.data->buffer);

            FUNC0(w->response.data);
            FUNC2(w->response.data, "URL not valid. I don't understand you...\r\n");
            w->response.code = HTTP_RESP_BAD_REQUEST;
            break;
        case HTTP_VALIDATION_NOT_SUPPORTED:
            FUNC3(D_WEB_CLIENT_ACCESS, "%llu: Cannot understand '%s'.", w->id, w->response.data->buffer);

            FUNC0(w->response.data);
            FUNC2(w->response.data, "I don't understand you...\r\n");
            w->response.code = HTTP_RESP_BAD_REQUEST;
            break;
    }

    // keep track of the time we done processing
    FUNC6(&w->tv_ready);

    w->response.sent = 0;

    // set a proper last modified date
    if(FUNC9(!w->response.data->date))
        w->response.data->date = w->tv_ready.tv_sec;

    FUNC21(w);

    // enable sending immediately if we have data
    if(w->response.data->len) FUNC18(w);
    else FUNC16(w);

    switch(w->mode) {
        case WEB_CLIENT_MODE_STREAM:
            FUNC3(D_WEB_CLIENT, "%llu: STREAM done.", w->id);
            break;

        case WEB_CLIENT_MODE_OPTIONS:
            FUNC3(D_WEB_CLIENT, "%llu: Done preparing the OPTIONS response. Sending data (%zu bytes) to client.", w->id, w->response.data->len);
            break;

        case WEB_CLIENT_MODE_NORMAL:
            FUNC3(D_WEB_CLIENT, "%llu: Done preparing the response. Sending data (%zu bytes) to client.", w->id, w->response.data->len);
            break;

        case WEB_CLIENT_MODE_FILECOPY:
            if(w->response.rlen) {
                FUNC3(D_WEB_CLIENT, "%llu: Done preparing the response. Will be sending data file of %zu bytes to client.", w->id, w->response.rlen);
                FUNC17(w);

                /*
                // utilize the kernel sendfile() for copying the file to the socket.
                // this block of code can be commented, without anything missing.
                // when it is commented, the program will copy the data using async I/O.
                {
                    long len = sendfile(w->ofd, w->ifd, NULL, w->response.data->rbytes);
                    if(len != w->response.data->rbytes)
                        error("%llu: sendfile() should copy %ld bytes, but copied %ld. Falling back to manual copy.", w->id, w->response.data->rbytes, len);
                    else
                        web_client_request_done(w);
                }
                */
            }
            else
                FUNC3(D_WEB_CLIENT, "%llu: Done preparing the response. Will be sending an unknown amount of bytes to client.", w->id);
            break;

        default:
            FUNC4("%llu: Unknown client mode %u.", w->id, w->mode);
            break;
    }
}