
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* connection; } ;
typedef TYPE_2__ ngx_http_request_t ;
typedef int * gdImagePtr ;
struct TYPE_4__ {int log; } ;


 int NGX_LOG_ERR ;
 int * gdImageCreate (int,int) ;
 int * gdImageCreateTrueColor (int,int) ;
 int ngx_log_error (int ,int ,int ,char*) ;

__attribute__((used)) static gdImagePtr
ngx_http_image_new(ngx_http_request_t *r, int w, int h, int colors)
{
    gdImagePtr img;

    if (colors == 0) {
        img = gdImageCreateTrueColor(w, h);

        if (img == ((void*)0)) {
            ngx_log_error(NGX_LOG_ERR, r->connection->log, 0,
                          "gdImageCreateTrueColor() failed");
            return ((void*)0);
        }

    } else {
        img = gdImageCreate(w, h);

        if (img == ((void*)0)) {
            ngx_log_error(NGX_LOG_ERR, r->connection->log, 0,
                          "gdImageCreate() failed");
            return ((void*)0);
        }
    }

    return img;
}
