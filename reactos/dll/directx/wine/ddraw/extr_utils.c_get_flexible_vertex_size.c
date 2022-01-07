
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;
typedef int D3DVALUE ;


 int D3DFVF_DIFFUSE ;
 int D3DFVF_NORMAL ;
 int D3DFVF_POSITION_MASK ;
 int D3DFVF_RESERVED1 ;
 int D3DFVF_SPECULAR ;







 int ERR (char*) ;
 int GET_TEXCOORD_SIZE_FROM_FVF (int,int) ;
 int GET_TEXCOUNT_FROM_FVF (int) ;

DWORD
get_flexible_vertex_size(DWORD d3dvtVertexType)
{
    DWORD size = 0;
    DWORD i;

    if (d3dvtVertexType & D3DFVF_NORMAL) size += 3 * sizeof(D3DVALUE);
    if (d3dvtVertexType & D3DFVF_DIFFUSE) size += sizeof(DWORD);
    if (d3dvtVertexType & D3DFVF_SPECULAR) size += sizeof(DWORD);
    if (d3dvtVertexType & D3DFVF_RESERVED1) size += sizeof(DWORD);
    switch (d3dvtVertexType & D3DFVF_POSITION_MASK)
    {
        case 134: size += 3 * sizeof(D3DVALUE); break;
        case 128: size += 4 * sizeof(D3DVALUE); break;
        case 133: size += 4 * sizeof(D3DVALUE); break;
        case 132: size += 5 * sizeof(D3DVALUE); break;
        case 131: size += 6 * sizeof(D3DVALUE); break;
        case 130: size += 7 * sizeof(D3DVALUE); break;
        case 129: size += 8 * sizeof(D3DVALUE); break;
        default: ERR("Unexpected position mask\n");
    }
    for (i = 0; i < GET_TEXCOUNT_FROM_FVF(d3dvtVertexType); i++)
    {
        size += GET_TEXCOORD_SIZE_FROM_FVF(d3dvtVertexType, i) * sizeof(D3DVALUE);
    }

    return size;
}
