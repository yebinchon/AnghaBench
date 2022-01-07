
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ended; } ;
typedef TYPE_1__ fcgi_request ;


 int fcgi_flush (TYPE_1__*,int) ;

int fcgi_end(fcgi_request *req) {
 int ret = 1;
 if (!req->ended) {
  ret = fcgi_flush(req, 1);
  req->ended = 1;
 }
 return ret;
}
