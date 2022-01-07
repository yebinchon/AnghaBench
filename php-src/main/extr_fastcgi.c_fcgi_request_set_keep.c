
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int keep; } ;
typedef TYPE_1__ fcgi_request ;



void fcgi_request_set_keep(fcgi_request *req, int new_value)
{
 req->keep = new_value;
}
