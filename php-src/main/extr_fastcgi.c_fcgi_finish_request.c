
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ fd; } ;
typedef TYPE_1__ fcgi_request ;


 int fcgi_close (TYPE_1__*,int,int) ;
 int fcgi_end (TYPE_1__*) ;

int fcgi_finish_request(fcgi_request *req, int force_close)
{
 int ret = 1;

 if (req->fd >= 0) {
  ret = fcgi_end(req);
  fcgi_close(req, force_close, 1);
 }
 return ret;
}
