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
struct stream_lavf_params {char* useragent; char* cookies_file; char* tls_ca_file; char* tls_cert_file; char* tls_key_file; scalar_t__ timeout; char* http_proxy; int /*<<< orphan*/  avopts; scalar_t__* http_header_fields; scalar_t__ referrer; scalar_t__ tls_verify; scalar_t__ cookies_enabled; } ;
struct mpv_global {int dummy; } ;
struct mp_log {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  AVDictionary ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,char*,char*,int /*<<< orphan*/ ) ; 
 char* FUNC1 (void*,struct mp_log*,char*) ; 
 struct stream_lavf_params* FUNC2 (void*,struct mpv_global*,int /*<<< orphan*/ *) ; 
 char* FUNC3 (void*,struct mpv_global*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,long long) ; 
 int /*<<< orphan*/  stream_lavf_conf ; 
 scalar_t__ FUNC6 (char*) ; 
 char* FUNC7 (char*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 void* FUNC9 (int /*<<< orphan*/ *) ; 
 char* FUNC10 (void*,char*) ; 

void FUNC11(AVDictionary **dict, struct mpv_global *global,
                                 struct mp_log *log)
{
    void *temp = FUNC9(NULL);
    struct stream_lavf_params *opts =
        FUNC2(temp, global, &stream_lavf_conf);

    // HTTP specific options (other protocols ignore them)
    if (opts->useragent)
        FUNC0(dict, "user_agent", opts->useragent, 0);
    if (opts->cookies_enabled) {
        char *file = opts->cookies_file;
        if (file && file[0])
            file = FUNC3(temp, global, file);
        char *cookies = FUNC1(temp, log, file);
        if (cookies && cookies[0])
            FUNC0(dict, "cookies", cookies, 0);
    }
    FUNC0(dict, "tls_verify", opts->tls_verify ? "1" : "0", 0);
    if (opts->tls_ca_file)
        FUNC0(dict, "ca_file", opts->tls_ca_file, 0);
    if (opts->tls_cert_file)
        FUNC0(dict, "cert_file", opts->tls_cert_file, 0);
    if (opts->tls_key_file)
        FUNC0(dict, "key_file", opts->tls_key_file, 0);
    char *cust_headers = FUNC10(temp, "");
    if (opts->referrer) {
        cust_headers = FUNC7(cust_headers, "Referer: %s\r\n",
                                              opts->referrer);
    }
    if (opts->http_header_fields) {
        for (int n = 0; opts->http_header_fields[n]; n++) {
            cust_headers = FUNC7(cust_headers, "%s\r\n",
                                                  opts->http_header_fields[n]);
        }
    }
    if (FUNC6(cust_headers))
        FUNC0(dict, "headers", cust_headers, 0);
    FUNC0(dict, "icy", "1", 0);
    // So far, every known protocol uses microseconds for this
    if (opts->timeout > 0) {
        char buf[80];
        FUNC5(buf, sizeof(buf), "%lld", (long long)(opts->timeout * 1e6));
        FUNC0(dict, "timeout", buf, 0);
    }
    if (opts->http_proxy && opts->http_proxy[0])
        FUNC0(dict, "http_proxy", opts->http_proxy, 0);

    FUNC4(dict, opts->avopts);

    FUNC8(temp);
}