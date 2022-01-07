
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_resource ;
typedef int z_stream ;


 int deflateEnd (int *) ;
 int efree (int *) ;
 int le_deflate ;
 int * zend_fetch_resource (int *,int *,int ) ;

void deflate_rsrc_dtor(zend_resource *res)
{
 z_stream *ctx = zend_fetch_resource(res, ((void*)0), le_deflate);
 deflateEnd(ctx);
 efree(ctx);
}
