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
struct mg_str {scalar_t__ len; int /*<<< orphan*/ * p; } ;
struct http_message {struct mg_str* header_values; struct mg_str* header_names; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,size_t) ; 
 size_t FUNC1 (char const*) ; 

struct mg_str *FUNC2(struct http_message *hm, const char *name) {
  size_t i, len = FUNC1(name);

  for (i = 0; hm->header_names[i].len > 0; i++) {
    struct mg_str *h = &hm->header_names[i], *v = &hm->header_values[i];
    if (h->p != NULL && h->len == len && !FUNC0(h->p, name, len))
      return v;
  }

  return NULL;
}