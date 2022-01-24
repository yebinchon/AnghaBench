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
struct mg_http_proto_data {int /*<<< orphan*/  reverse_proxy_data; int /*<<< orphan*/  endpoints; int /*<<< orphan*/  mp_stream; int /*<<< orphan*/  cgi; int /*<<< orphan*/  file; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(void *proto_data) {
  struct mg_http_proto_data *pd = (struct mg_http_proto_data *) proto_data;
#if MG_ENABLE_FILESYSTEM
  mg_http_free_proto_data_file(&pd->file);
#endif
#if MG_ENABLE_HTTP_CGI
  mg_http_free_proto_data_cgi(&pd->cgi);
#endif
#if MG_ENABLE_HTTP_STREAMING_MULTIPART
  mg_http_free_proto_data_mp_stream(&pd->mp_stream);
#endif
  FUNC2(&pd->endpoints);
  FUNC5(&pd->reverse_proxy_data);
  FUNC0(proto_data);
}