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
struct userdata {char* url; int depth; } ;
struct mg_mgr {int dummy; } ;
struct mg_connection {struct userdata* user_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  event_handler ; 
 int /*<<< orphan*/  FUNC0 (struct userdata*) ; 
 struct userdata* FUNC1 (size_t) ; 
 struct mg_connection* FUNC2 (struct mg_mgr*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 size_t FUNC4 (char const*) ; 
 char* FUNC5 (struct userdata*,char const*,size_t) ; 

void FUNC6(struct mg_mgr *mgr, const char *url, size_t url_len,
                int depth) {
  struct mg_connection *nc;
  struct userdata *data = FUNC1(sizeof(struct userdata));

  if (url_len == (size_t) ~0) {
    url_len = FUNC4(url);
  }

  data->url = FUNC5(FUNC1(url_len + 1), url, url_len);
  data->url[url_len] = '\0';
  data->depth = depth;

  nc = FUNC2(mgr, event_handler, url, NULL, NULL);
  if (nc != NULL) {
    nc->user_data = data;
  } else {
    FUNC3("Error connecting to [%s]\n", url);
    FUNC0(data);
  }
}