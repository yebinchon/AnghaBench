
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ fd; } ;
typedef TYPE_1__ fcgi_request ;



int fcgi_is_closed(fcgi_request *req)
{
 return (req->fd < 0);
}
