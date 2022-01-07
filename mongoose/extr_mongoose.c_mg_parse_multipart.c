
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_str {char const* p; size_t len; } ;
typedef int cd ;


 int MG_FREE (char*) ;
 size_t mg_get_line_len (char const*,size_t) ;
 int mg_http_get_request_len (char const*,size_t) ;
 int mg_http_parse_header2 (struct mg_str*,char*,char**,size_t) ;
 scalar_t__ mg_ncasecmp (char const*,char const*,size_t) ;
 int strncmp (char const*,char const*,size_t) ;

size_t mg_parse_multipart(const char *buf, size_t buf_len, char *var_name,
                          size_t var_name_len, char *file_name,
                          size_t file_name_len, const char **data,
                          size_t *data_len) {
  static const char cd[] = "Content-Disposition: ";
  size_t hl, bl, n, ll, pos, cdl = sizeof(cd) - 1;
  int shl;

  if (buf == ((void*)0) || buf_len <= 0) return 0;
  if ((shl = mg_http_get_request_len(buf, buf_len)) <= 0) return 0;
  hl = shl;
  if (buf[0] != '-' || buf[1] != '-' || buf[2] == '\n') return 0;


  bl = mg_get_line_len(buf, buf_len);


  var_name[0] = file_name[0] = '\0';
  for (n = bl; (ll = mg_get_line_len(buf + n, hl - n)) > 0; n += ll) {
    if (mg_ncasecmp(cd, buf + n, cdl) == 0) {
      struct mg_str header;
      header.p = buf + n + cdl;
      header.len = ll - (cdl + 2);
      {
        char *var_name2 = var_name;
        mg_http_parse_header2(&header, "name", &var_name2, var_name_len);

        if (var_name2 != var_name) {
          MG_FREE(var_name2);
          var_name[0] = '\0';
        }
      }
      {
        char *file_name2 = file_name;
        mg_http_parse_header2(&header, "filename", &file_name2, file_name_len);

        if (file_name2 != file_name) {
          MG_FREE(file_name2);
          file_name[0] = '\0';
        }
      }
    }
  }


  for (pos = hl; pos + (bl - 2) < buf_len; pos++) {
    if (buf[pos] == '-' && !strncmp(buf, &buf[pos], bl - 2)) {
      if (data_len != ((void*)0)) *data_len = (pos - 2) - hl;
      if (data != ((void*)0)) *data = buf + hl;
      return pos;
    }
  }

  return 0;
}
