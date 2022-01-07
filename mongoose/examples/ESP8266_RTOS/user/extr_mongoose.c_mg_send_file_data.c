
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_connection {int dummy; } ;
typedef int buf ;
typedef int FILE ;


 int BUFSIZ ;
 size_t mg_fread (char*,int,int,int *) ;
 int mg_send (struct mg_connection*,char*,size_t) ;

__attribute__((used)) static void mg_send_file_data(struct mg_connection *nc, FILE *fp) {
  char buf[BUFSIZ];
  size_t n;
  while ((n = mg_fread(buf, 1, sizeof(buf), fp)) > 0) {
    mg_send(nc, buf, n);
  }
}
