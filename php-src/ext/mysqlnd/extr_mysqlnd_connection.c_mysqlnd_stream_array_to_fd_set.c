
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int php_stream ;
typedef scalar_t__ php_socket_t ;
typedef int fd_set ;
struct TYPE_11__ {TYPE_2__* data; } ;
struct TYPE_10__ {TYPE_3__* data; } ;
struct TYPE_9__ {int thread_id; TYPE_5__* vio; } ;
struct TYPE_7__ {int * (* get_stream ) (TYPE_5__*) ;} ;
struct TYPE_8__ {TYPE_1__ m; } ;
typedef TYPE_4__ MYSQLND ;


 int DBG_ENTER (char*) ;
 int DBG_INF_FMT (char*,int ,int *) ;
 int DBG_RETURN (int) ;
 int PHP_SAFE_FD_SET (scalar_t__,int *) ;
 int PHP_STREAM_AS_FD_FOR_SELECT ;
 int PHP_STREAM_CAST_INTERNAL ;
 scalar_t__ SUCCESS ;
 scalar_t__ ZEND_VALID_SOCKET (scalar_t__) ;
 scalar_t__ php_stream_cast (int *,int,void*,int) ;
 int * stub1 (TYPE_5__*) ;

__attribute__((used)) static unsigned int
mysqlnd_stream_array_to_fd_set(MYSQLND ** conn_array, fd_set * fds, php_socket_t * max_fd)
{
 php_socket_t this_fd;
 php_stream *stream = ((void*)0);
 unsigned int cnt = 0;
 MYSQLND **p = conn_array;
 DBG_ENTER("mysqlnd_stream_array_to_fd_set");

 while (*p) {





  stream = (*p)->data->vio->data->m.get_stream((*p)->data->vio);
  DBG_INF_FMT("conn=%llu stream=%p", (*p)->data->thread_id, stream);
  if (stream != ((void*)0) &&
   SUCCESS == php_stream_cast(stream, PHP_STREAM_AS_FD_FOR_SELECT | PHP_STREAM_CAST_INTERNAL, (void*)&this_fd, 1) &&
   ZEND_VALID_SOCKET(this_fd))
  {

   PHP_SAFE_FD_SET(this_fd, fds);

   if (this_fd > *max_fd) {
    *max_fd = this_fd;
   }
   ++cnt;
  }
  ++p;
 }
 DBG_RETURN(cnt ? 1 : 0);
}
