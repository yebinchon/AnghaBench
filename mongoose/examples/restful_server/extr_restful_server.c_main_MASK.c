#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mg_mgr {char* hexdump_file; } ;
struct mg_connection {int dummy; } ;
struct mg_bind_opts {char const** error_string; char const* ssl_cert; } ;
typedef  int /*<<< orphan*/  bind_opts ;
struct TYPE_2__ {char* document_root; char* auth_domain; char* global_auth_file; char* per_directory_auth_file; char* url_rewrites; char* cgi_interpreter; char* enable_directory_listing; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIRSEP ; 
 int /*<<< orphan*/  ev_handler ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct mg_bind_opts*,int /*<<< orphan*/ ,int) ; 
 struct mg_connection* FUNC3 (struct mg_mgr*,char*,int /*<<< orphan*/ ,struct mg_bind_opts) ; 
 int /*<<< orphan*/  FUNC4 (struct mg_mgr*) ; 
 int /*<<< orphan*/  FUNC5 (struct mg_mgr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct mg_mgr*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct mg_connection*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,char*) ; 
 char* s_http_port ; 
 TYPE_1__ s_http_server_opts ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC9 (char*,char*) ; 
 char* FUNC10 (char*,int /*<<< orphan*/ ) ; 

int FUNC11(int argc, char *argv[]) {
  struct mg_mgr mgr;
  struct mg_connection *nc;
  struct mg_bind_opts bind_opts;
  int i;
  char *cp;
  const char *err_str;
#if MG_ENABLE_SSL
  const char *ssl_cert = NULL;
#endif

  FUNC5(&mgr, NULL);

  /* Use current binary directory as document root */
  if (argc > 0 && ((cp = FUNC10(argv[0], DIRSEP)) != NULL)) {
    *cp = '\0';
    s_http_server_opts.document_root = argv[0];
  }

  /* Process command line options to customize HTTP server */
  for (i = 1; i < argc; i++) {
    if (FUNC9(argv[i], "-D") == 0 && i + 1 < argc) {
      mgr.hexdump_file = argv[++i];
    } else if (FUNC9(argv[i], "-d") == 0 && i + 1 < argc) {
      s_http_server_opts.document_root = argv[++i];
    } else if (FUNC9(argv[i], "-p") == 0 && i + 1 < argc) {
      s_http_port = argv[++i];
    } else if (FUNC9(argv[i], "-a") == 0 && i + 1 < argc) {
      s_http_server_opts.auth_domain = argv[++i];
    } else if (FUNC9(argv[i], "-P") == 0 && i + 1 < argc) {
      s_http_server_opts.global_auth_file = argv[++i];
    } else if (FUNC9(argv[i], "-A") == 0 && i + 1 < argc) {
      s_http_server_opts.per_directory_auth_file = argv[++i];
    } else if (FUNC9(argv[i], "-r") == 0 && i + 1 < argc) {
      s_http_server_opts.url_rewrites = argv[++i];
#if MG_ENABLE_HTTP_CGI
    } else if (strcmp(argv[i], "-i") == 0 && i + 1 < argc) {
      s_http_server_opts.cgi_interpreter = argv[++i];
#endif
#if MG_ENABLE_SSL
    } else if (strcmp(argv[i], "-s") == 0 && i + 1 < argc) {
      ssl_cert = argv[++i];
#endif
    } else {
      FUNC1(stderr, "Unknown option: [%s]\n", argv[i]);
      FUNC0(1);
    }
  }

  /* Set HTTP server options */
  FUNC2(&bind_opts, 0, sizeof(bind_opts));
  bind_opts.error_string = &err_str;
#if MG_ENABLE_SSL
  if (ssl_cert != NULL) {
    bind_opts.ssl_cert = ssl_cert;
  }
#endif
  nc = FUNC3(&mgr, s_http_port, ev_handler, bind_opts);
  if (nc == NULL) {
    FUNC1(stderr, "Error starting server on port %s: %s\n", s_http_port,
            *bind_opts.error_string);
    FUNC0(1);
  }

  FUNC7(nc);
  s_http_server_opts.enable_directory_listing = "yes";

  FUNC8("Starting RESTful server on port %s, serving %s\n", s_http_port,
         s_http_server_opts.document_root);
  for (;;) {
    FUNC6(&mgr, 1000);
  }
  FUNC4(&mgr);

  return 0;
}