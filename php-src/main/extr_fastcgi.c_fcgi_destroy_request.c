
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int env; } ;
typedef TYPE_1__ fcgi_request ;


 int fcgi_hash_destroy (int *) ;
 int free (TYPE_1__*) ;

void fcgi_destroy_request(fcgi_request *req) {
 fcgi_hash_destroy(&req->env);
 free(req);
}
