
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_serve_http_opts {char* document_root; char* ssi_pattern; } ;
struct mg_connection {int dummy; } ;
struct http_message {int dummy; } ;
typedef int sock_t ;
typedef int path ;
typedef int FILE ;


 int DIRSEP ;
 int MG_MAX_PATH ;
 int fclose (int *) ;
 scalar_t__ fileno (int *) ;
 int * mg_fopen (char*,char*) ;
 int mg_get_errno () ;
 scalar_t__ mg_match_prefix (char*,int,char*) ;
 int mg_printf (struct mg_connection*,char*,char*,...) ;
 int mg_send_file_data (struct mg_connection*,int *) ;
 int mg_send_ssi_file (struct mg_connection*,struct http_message*,char*,int *,int,struct mg_serve_http_opts const*) ;
 int mg_set_close_on_exec (int ) ;
 int snprintf (char*,int,char*,char const*,...) ;
 int sscanf (char*,char*,char*) ;
 int strerror (int ) ;
 int strlen (char*) ;
 char* strrchr (char*,int ) ;

__attribute__((used)) static void mg_do_ssi_include(struct mg_connection *nc, struct http_message *hm,
                              const char *ssi, char *tag, int include_level,
                              const struct mg_serve_http_opts *opts) {
  char file_name[MG_MAX_PATH], path[MG_MAX_PATH], *p;
  FILE *fp;





  if (sscanf(tag, " virtual=\"%[^\"]\"", file_name) == 1) {

    snprintf(path, sizeof(path), "%s/%s", opts->document_root, file_name);
  } else if (sscanf(tag, " abspath=\"%[^\"]\"", file_name) == 1) {




    snprintf(path, sizeof(path), "%s", file_name);
  } else if (sscanf(tag, " file=\"%[^\"]\"", file_name) == 1 ||
             sscanf(tag, " \"%[^\"]\"", file_name) == 1) {

    snprintf(path, sizeof(path), "%s", ssi);
    if ((p = strrchr(path, DIRSEP)) != ((void*)0)) {
      p[1] = '\0';
    }
    snprintf(path + strlen(path), sizeof(path) - strlen(path), "%s", file_name);
  } else {
    mg_printf(nc, "Bad SSI #include: [%s]", tag);
    return;
  }

  if ((fp = mg_fopen(path, "rb")) == ((void*)0)) {
    mg_printf(nc, "SSI include error: mg_fopen(%s): %s", path,
              strerror(mg_get_errno()));
  } else {
    mg_set_close_on_exec((sock_t) fileno(fp));
    if (mg_match_prefix(opts->ssi_pattern, strlen(opts->ssi_pattern), path) >
        0) {
      mg_send_ssi_file(nc, hm, path, fp, include_level + 1, opts);
    } else {
      mg_send_file_data(nc, fp);
    }
    fclose(fp);
  }
}
