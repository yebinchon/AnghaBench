
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_http_proto_data_file {int * fp; } ;


 int fclose (int *) ;
 int memset (struct mg_http_proto_data_file*,int ,int) ;

__attribute__((used)) static void mg_http_free_proto_data_file(struct mg_http_proto_data_file *d) {
  if (d != ((void*)0)) {
    if (d->fp != ((void*)0)) {
      fclose(d->fp);
    }
    memset(d, 0, sizeof(struct mg_http_proto_data_file));
  }
}
