
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_connection {int dummy; } ;
typedef int src ;
typedef int dst ;
typedef int FILE ;







 int MG_SOCK_STRINGIFY_IP ;
 int MG_SOCK_STRINGIFY_PORT ;
 int MG_SOCK_STRINGIFY_REMOTE ;
 int fclose (int *) ;
 int fprintf (int *,char*,unsigned long,void*,char*,char const*,char*,int) ;
 int mg_conn_addr_to_str (struct mg_connection*,char*,int,int) ;
 int * mg_fopen (char const*,char*) ;
 int mg_hexdumpf (int *,void const*,int) ;
 scalar_t__ mg_time () ;
 int * stderr ;
 int * stdout ;
 scalar_t__ strcmp (char const*,char*) ;

void mg_hexdump_connection(struct mg_connection *nc, const char *path,
                           const void *buf, int num_bytes, int ev) {
  FILE *fp = ((void*)0);
  char src[60], dst[60];
  const char *tag = ((void*)0);
  switch (ev) {
    case 129:
      tag = "<-";
      break;
    case 128:
      tag = "->";
      break;
    case 132:
      tag = "<A";
      break;
    case 130:
      tag = "C>";
      break;
    case 131:
      tag = "XX";
      break;
  }
  if (tag == ((void*)0)) return;

  if (strcmp(path, "-") == 0) {
    fp = stdout;
  } else if (strcmp(path, "--") == 0) {
    fp = stderr;




  }
  if (fp == ((void*)0)) return;

  mg_conn_addr_to_str(nc, src, sizeof(src),
                      MG_SOCK_STRINGIFY_IP | MG_SOCK_STRINGIFY_PORT);
  mg_conn_addr_to_str(nc, dst, sizeof(dst), MG_SOCK_STRINGIFY_IP |
                                                MG_SOCK_STRINGIFY_PORT |
                                                MG_SOCK_STRINGIFY_REMOTE);
  fprintf(fp, "%lu %p %s %s %s %d\n", (unsigned long) mg_time(), (void *) nc,
          src, tag, dst, (int) num_bytes);
  if (num_bytes > 0) {
    mg_hexdumpf(fp, buf, num_bytes);
  }
  if (fp != stdout && fp != stderr) fclose(fp);
}
