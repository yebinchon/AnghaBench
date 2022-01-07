
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * dxtn_conversion_func ;
typedef int D3DFORMAT ;
typedef int BOOL ;





 int * wined3d_dxt1_decode ;
 int * wined3d_dxt1_encode ;
 int * wined3d_dxt3_decode ;
 int * wined3d_dxt3_encode ;
 int * wined3d_dxt5_decode ;
 int * wined3d_dxt5_encode ;

__attribute__((used)) static dxtn_conversion_func get_dxtn_conversion_func(D3DFORMAT format, BOOL encode)
{
    switch (format)
    {
        case 130:
            return encode ? wined3d_dxt1_encode : wined3d_dxt1_decode;
        case 129:
            return encode ? wined3d_dxt3_encode : wined3d_dxt3_decode;
        case 128:
            return encode ? wined3d_dxt5_encode : wined3d_dxt5_decode;
        default:
            return ((void*)0);
    }
}
