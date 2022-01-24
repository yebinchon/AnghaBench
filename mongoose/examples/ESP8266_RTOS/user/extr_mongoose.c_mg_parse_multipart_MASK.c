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
struct mg_str {char const* p; size_t len; } ;
typedef  int /*<<< orphan*/  cd ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 size_t FUNC1 (char const*,size_t) ; 
 int FUNC2 (char const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct mg_str*,char*,char**,size_t) ; 
 scalar_t__ FUNC4 (char const*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char const*,size_t) ; 

size_t FUNC6(const char *buf, size_t buf_len, char *var_name,
                          size_t var_name_len, char *file_name,
                          size_t file_name_len, const char **data,
                          size_t *data_len) {
  static const char cd[] = "Content-Disposition: ";
  size_t hl, bl, n, ll, pos, cdl = sizeof(cd) - 1;
  int shl;

  if (buf == NULL || buf_len <= 0) return 0;
  if ((shl = FUNC2(buf, buf_len)) <= 0) return 0;
  hl = shl;
  if (buf[0] != '-' || buf[1] != '-' || buf[2] == '\n') return 0;

  /* Get boundary length */
  bl = FUNC1(buf, buf_len);

  /* Loop through headers, fetch variable name and file name */
  var_name[0] = file_name[0] = '\0';
  for (n = bl; (ll = FUNC1(buf + n, hl - n)) > 0; n += ll) {
    if (FUNC4(cd, buf + n, cdl) == 0) {
      struct mg_str header;
      header.p = buf + n + cdl;
      header.len = ll - (cdl + 2);
      {
        char *var_name2 = var_name;
        FUNC3(&header, "name", &var_name2, var_name_len);
        /* TODO: handle reallocated buffer correctly */
        if (var_name2 != var_name) {
          FUNC0(var_name2);
          var_name[0] = '\0';
        }
      }
      {
        char *file_name2 = file_name;
        FUNC3(&header, "filename", &file_name2, file_name_len);
        /* TODO: handle reallocated buffer correctly */
        if (file_name2 != file_name) {
          FUNC0(file_name2);
          file_name[0] = '\0';
        }
      }
    }
  }

  /* Scan through the body, search for terminating boundary */
  for (pos = hl; pos + (bl - 2) < buf_len; pos++) {
    if (buf[pos] == '-' && !FUNC5(buf, &buf[pos], bl - 2)) {
      if (data_len != NULL) *data_len = (pos - 2) - hl;
      if (data != NULL) *data = buf + hl;
      return pos;
    }
  }

  return 0;
}