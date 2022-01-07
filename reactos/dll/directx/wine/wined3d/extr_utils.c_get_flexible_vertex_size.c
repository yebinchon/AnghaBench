
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;


 int ERR (char*) ;
 int GET_TEXCOORD_SIZE_FROM_FVF (int,int) ;
 int WINED3DFVF_DIFFUSE ;
 int WINED3DFVF_NORMAL ;
 int WINED3DFVF_POSITION_MASK ;
 int WINED3DFVF_PSIZE ;
 int WINED3DFVF_SPECULAR ;
 int WINED3DFVF_TEXCOUNT_MASK ;
 int WINED3DFVF_TEXCOUNT_SHIFT ;
DWORD get_flexible_vertex_size(DWORD d3dvtVertexType) {
    DWORD size = 0;
    int i;
    int numTextures = (d3dvtVertexType & WINED3DFVF_TEXCOUNT_MASK) >> WINED3DFVF_TEXCOUNT_SHIFT;

    if (d3dvtVertexType & WINED3DFVF_NORMAL) size += 3 * sizeof(float);
    if (d3dvtVertexType & WINED3DFVF_DIFFUSE) size += sizeof(DWORD);
    if (d3dvtVertexType & WINED3DFVF_SPECULAR) size += sizeof(DWORD);
    if (d3dvtVertexType & WINED3DFVF_PSIZE) size += sizeof(DWORD);
    switch (d3dvtVertexType & WINED3DFVF_POSITION_MASK) {
        case 135: size += 3 * sizeof(float); break;
        case 129: size += 4 * sizeof(float); break;
        case 134: size += 4 * sizeof(float); break;
        case 133: size += 5 * sizeof(float); break;
        case 132: size += 6 * sizeof(float); break;
        case 131: size += 7 * sizeof(float); break;
        case 130: size += 8 * sizeof(float); break;
        case 128: size += 4 * sizeof(float); break;
        default: ERR("Unexpected position mask\n");
    }
    for (i = 0; i < numTextures; i++) {
        size += GET_TEXCOORD_SIZE_FROM_FVF(d3dvtVertexType, i) * sizeof(float);
    }

    return size;
}
