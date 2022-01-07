
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mg_str {size_t len; char const* p; } ;
struct mg_serve_http_opts {char* custom_mime_types; } ;
struct TYPE_2__ {size_t ext_len; char const* mime_type; int * extension; } ;


 scalar_t__ mg_casecmp (char const*,int *) ;
 char* mg_next_comma_list_entry (char const*,struct mg_str*,struct mg_str*) ;
 TYPE_1__* mg_static_builtin_mime_types ;
 scalar_t__ mg_vcasecmp (struct mg_str*,char const*) ;
 void* strlen (char const*) ;

__attribute__((used)) static struct mg_str mg_get_mime_type(const char *path, const char *dflt,
                                      const struct mg_serve_http_opts *opts) {
  const char *ext, *overrides;
  size_t i, path_len;
  struct mg_str r, k, v;

  path_len = strlen(path);

  overrides = opts->custom_mime_types;
  while ((overrides = mg_next_comma_list_entry(overrides, &k, &v)) != ((void*)0)) {
    ext = path + (path_len - k.len);
    if (path_len > k.len && mg_vcasecmp(&k, ext) == 0) {
      return v;
    }
  }

  for (i = 0; mg_static_builtin_mime_types[i].extension != ((void*)0); i++) {
    ext = path + (path_len - mg_static_builtin_mime_types[i].ext_len);
    if (path_len > mg_static_builtin_mime_types[i].ext_len && ext[-1] == '.' &&
        mg_casecmp(ext, mg_static_builtin_mime_types[i].extension) == 0) {
      r.p = mg_static_builtin_mime_types[i].mime_type;
      r.len = strlen(r.p);
      return r;
    }
  }

  r.p = dflt;
  r.len = strlen(r.p);
  return r;
}
