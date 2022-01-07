
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t ssize_t ;
struct TYPE_3__ {int fd; int tcp; } ;
typedef TYPE_1__ fcgi_request ;


 scalar_t__ EINTR ;
 size_t INT_MAX ;
 size_t UINT_MAX ;
 scalar_t__ WSAGetLastError () ;
 scalar_t__ errno ;
 int read (int ,char*,size_t) ;
 int recv (int ,char*,int,int ) ;

__attribute__((used)) static inline ssize_t safe_read(fcgi_request *req, const void *buf, size_t count)
{
 int ret;
 size_t n = 0;

 do {



  errno = 0;
  ret = read(req->fd, ((char*)buf)+n, count-n);

  if (ret > 0) {
   n += ret;
  } else if (ret == 0 && errno == 0) {
   return n;
  } else if (ret <= 0 && errno != 0 && errno != EINTR) {
   return ret;
  }
 } while (n != count);
 return n;
}
