
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ngx_rtmp_rmemcpy (double*,void*,int) ;

__attribute__((used)) static double
ngx_rtmp_flv_index_value(void *src)
{
    double v;

    ngx_rtmp_rmemcpy(&v, src, 8);

    return v;
}
