
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_connection {int dummy; } ;
struct http_message {int body; } ;
typedef int host ;
typedef int file_name ;
typedef int file_data ;
typedef int bucket ;


 int mg_get_http_var (int *,char*,char*,int) ;
 int mg_printf (struct mg_connection*,char*,char*) ;
 int send_error_result (struct mg_connection*,char*) ;
 int send_s3_request (struct mg_connection*,char*,char*,char*,char*) ;

__attribute__((used)) static void handle_api_call(struct mg_connection *nc, struct http_message *hm) {
  char file_name[100], file_data[100], host[100], bucket[100];


  mg_get_http_var(&hm->body, "file_name", file_name, sizeof(file_name));
  mg_get_http_var(&hm->body, "file_data", file_data, sizeof(file_data));
  mg_get_http_var(&hm->body, "host", host, sizeof(host));
  mg_get_http_var(&hm->body, "bucket", bucket, sizeof(bucket));


  mg_printf(nc, "%s", "HTTP/1.1 200 OK\r\nTransfer-Encoding: chunked\r\n\r\n");


  if (file_name[0] == '\0' || file_data[0] == '\0' || bucket[0] == '\0') {
    send_error_result(nc, "bad input");
  } else {
    send_s3_request(nc, file_name, file_data, host, bucket);
  }
}
