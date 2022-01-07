
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {void (* on_accept ) () ;void (* on_read ) () ;void (* on_close ) () ;} ;
struct TYPE_6__ {int listen_socket; int fd; int id; int tcp; int env; TYPE_1__ hook; int out_buf; int out_pos; } ;
typedef TYPE_2__ fcgi_request ;
typedef int HANDLE ;


 int GetNamedPipeInfo (int ,int *,int *,int *,int *) ;
 scalar_t__ _get_osfhandle (int) ;
 TYPE_2__* calloc (int,int) ;
 int fcgi_hash_init (int *) ;
 void fcgi_hook_dummy () ;

fcgi_request *fcgi_init_request(int listen_socket, void(*on_accept)(), void(*on_read)(), void(*on_close)())
{
 fcgi_request *req = calloc(1, sizeof(fcgi_request));
 req->listen_socket = listen_socket;
 req->fd = -1;
 req->id = -1;
 req->out_pos = req->out_buf;
 req->hook.on_accept = on_accept ? on_accept : fcgi_hook_dummy;
 req->hook.on_read = on_read ? on_read : fcgi_hook_dummy;
 req->hook.on_close = on_close ? on_close : fcgi_hook_dummy;





 fcgi_hash_init(&req->env);

 return req;
}
