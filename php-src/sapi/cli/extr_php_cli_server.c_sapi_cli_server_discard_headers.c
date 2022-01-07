
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sapi_headers_struct ;


 int SAPI_HEADER_SENT_SUCCESSFULLY ;

__attribute__((used)) static int sapi_cli_server_discard_headers(sapi_headers_struct *sapi_headers) {
 return SAPI_HEADER_SENT_SUCCESSFULLY;
}
