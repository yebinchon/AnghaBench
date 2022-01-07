
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zend_resource ;
typedef int z_stream ;
struct TYPE_2__ {int * inflateDict; } ;
typedef TYPE_1__ php_zlib_context ;


 int efree (int *) ;
 int inflateEnd (int *) ;
 int le_inflate ;
 int * zend_fetch_resource (int *,int *,int ) ;

void inflate_rsrc_dtor(zend_resource *res)
{
 z_stream *ctx = zend_fetch_resource(res, ((void*)0), le_inflate);
 if (((php_zlib_context *) ctx)->inflateDict) {
  efree(((php_zlib_context *) ctx)->inflateDict);
 }
 inflateEnd(ctx);
 efree(ctx);
}
