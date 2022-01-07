
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fcgi_request ;


 int * fcgi_init_request (int,int ,int ,int ) ;
 int fpm_request_accepting ;
 int fpm_request_finished ;
 int fpm_request_reading_headers ;

__attribute__((used)) static fcgi_request *fpm_init_request(int listen_fd) {
 fcgi_request *req = fcgi_init_request(listen_fd,
  fpm_request_accepting,
  fpm_request_reading_headers,
  fpm_request_finished);
 return req;
}
