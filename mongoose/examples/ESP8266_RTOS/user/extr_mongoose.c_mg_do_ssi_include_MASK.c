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
struct mg_serve_http_opts {char* document_root; char* ssi_pattern; } ;
struct mg_connection {int dummy; } ;
struct http_message {int dummy; } ;
typedef  int /*<<< orphan*/  sock_t ;
typedef  int /*<<< orphan*/  path ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  DIRSEP ; 
 int MG_MAX_PATH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct mg_connection*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct mg_connection*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct mg_connection*,struct http_message*,char*,int /*<<< orphan*/ *,int,struct mg_serve_http_opts const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,char const*,...) ; 
 int FUNC10 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (char*) ; 
 char* FUNC13 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC14(struct mg_connection *nc, struct http_message *hm,
                              const char *ssi, char *tag, int include_level,
                              const struct mg_serve_http_opts *opts) {
  char file_name[MG_MAX_PATH], path[MG_MAX_PATH], *p;
  FILE *fp;

  /*
   * sscanf() is safe here, since send_ssi_file() also uses buffer
   * of size MG_BUF_LEN to get the tag. So strlen(tag) is always < MG_BUF_LEN.
   */
  if (FUNC10(tag, " virtual=\"%[^\"]\"", file_name) == 1) {
    /* File name is relative to the webserver root */
    FUNC9(path, sizeof(path), "%s/%s", opts->document_root, file_name);
  } else if (FUNC10(tag, " abspath=\"%[^\"]\"", file_name) == 1) {
    /*
     * File name is relative to the webserver working directory
     * or it is absolute system path
     */
    FUNC9(path, sizeof(path), "%s", file_name);
  } else if (FUNC10(tag, " file=\"%[^\"]\"", file_name) == 1 ||
             FUNC10(tag, " \"%[^\"]\"", file_name) == 1) {
    /* File name is relative to the currect document */
    FUNC9(path, sizeof(path), "%s", ssi);
    if ((p = FUNC13(path, DIRSEP)) != NULL) {
      p[1] = '\0';
    }
    FUNC9(path + FUNC12(path), sizeof(path) - FUNC12(path), "%s", file_name);
  } else {
    FUNC5(nc, "Bad SSI #include: [%s]", tag);
    return;
  }

  if ((fp = FUNC2(path, "rb")) == NULL) {
    FUNC5(nc, "SSI include error: mg_fopen(%s): %s", path,
              FUNC11(FUNC3()));
  } else {
    FUNC8((sock_t) FUNC1(fp));
    if (FUNC4(opts->ssi_pattern, FUNC12(opts->ssi_pattern), path) >
        0) {
      FUNC7(nc, hm, path, fp, include_level + 1, opts);
    } else {
      FUNC6(nc, fp);
    }
    FUNC0(fp);
  }
}