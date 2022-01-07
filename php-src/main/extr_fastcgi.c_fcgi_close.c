
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* on_close ) () ;} ;
struct TYPE_5__ {int fd; TYPE_1__ hook; scalar_t__ nodelay; int tcp; int keep; scalar_t__ has_env; int env; } ;
typedef TYPE_2__ fcgi_request ;
typedef int buf ;
typedef int HANDLE ;


 int DisconnectNamedPipe (int ) ;
 int FlushFileBuffers (int ) ;
 int RevertToSelf () ;
 int _get_osfhandle (int) ;
 int close (int) ;
 int closesocket (int) ;
 int fcgi_hash_clean (int *) ;
 scalar_t__ is_impersonate ;
 scalar_t__ recv (int,char*,int,int ) ;
 int shutdown (int,int) ;
 int stub1 () ;

void fcgi_close(fcgi_request *req, int force, int destroy)
{
 if (destroy && req->has_env) {
  fcgi_hash_clean(&req->env);
  req->has_env = 0;
 }







 if ((force || !req->keep) && req->fd >= 0) {
  if (!force) {
   char buf[8];

   shutdown(req->fd, 1);

   while (recv(req->fd, buf, sizeof(buf), 0) > 0) {}
  }
  close(req->fd);




  req->fd = -1;

  req->hook.on_close();
 }
}
