
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ra_d3d11 {size_t vbuf_size; size_t vbuf_used; int * vbuf; int ctx; int dev; } ;
struct ra {struct ra_d3d11* priv; } ;
struct TYPE_6__ {size_t ByteWidth; int CPUAccessFlags; int BindFlags; int Usage; } ;
struct TYPE_5__ {char* pData; int member_0; } ;
typedef int ID3D11Resource ;
typedef int ID3D11Buffer ;
typedef int HRESULT ;
typedef TYPE_1__ D3D11_MAPPED_SUBRESOURCE ;
typedef TYPE_2__ D3D11_BUFFER_DESC ;


 int D3D11_BIND_VERTEX_BUFFER ;
 int D3D11_CPU_ACCESS_WRITE ;
 int D3D11_MAP_WRITE_DISCARD ;
 int D3D11_MAP_WRITE_NO_OVERWRITE ;
 int D3D11_USAGE_DYNAMIC ;
 scalar_t__ FAILED (int ) ;
 int ID3D11DeviceContext_Map (int ,int *,int ,int ,int ,TYPE_1__*) ;
 int ID3D11DeviceContext_Unmap (int ,int *,int ) ;
 int ID3D11Device_CreateBuffer (int ,TYPE_2__*,int *,int **) ;
 int MP_ERR (struct ra*,char*,...) ;
 int SAFE_RELEASE (int *) ;
 int memcpy (char*,void*,size_t) ;
 int mp_HRESULT_to_str (int ) ;

__attribute__((used)) static size_t vbuf_upload(struct ra *ra, void *data, size_t size)
{
    struct ra_d3d11 *p = ra->priv;
    HRESULT hr;


    if (size > 1e9) {
        MP_ERR(ra, "Vertex buffer is too large\n");
        return -1;
    }


    if (size > p->vbuf_size) {
        size_t new_size = p->vbuf_size;

        if (!new_size)
            new_size = 64 * 1024;
        while (new_size < size)
            new_size *= 2;

        ID3D11Buffer *new_buf;
        D3D11_BUFFER_DESC vbuf_desc = {
            .ByteWidth = new_size,
            .Usage = D3D11_USAGE_DYNAMIC,
            .BindFlags = D3D11_BIND_VERTEX_BUFFER,
            .CPUAccessFlags = D3D11_CPU_ACCESS_WRITE,
        };
        hr = ID3D11Device_CreateBuffer(p->dev, &vbuf_desc, ((void*)0), &new_buf);
        if (FAILED(hr)) {
            MP_ERR(ra, "Failed to create vertex buffer: %s\n",
                   mp_HRESULT_to_str(hr));
            return -1;
        }

        SAFE_RELEASE(p->vbuf);
        p->vbuf = new_buf;
        p->vbuf_size = new_size;
        p->vbuf_used = 0;
    }

    bool discard = 0;
    size_t offset = p->vbuf_used;
    if (offset + size > p->vbuf_size) {

        discard = 1;
        offset = 0;
    }

    D3D11_MAPPED_SUBRESOURCE map = { 0 };
    hr = ID3D11DeviceContext_Map(p->ctx, (ID3D11Resource *)p->vbuf, 0,
        discard ? D3D11_MAP_WRITE_DISCARD : D3D11_MAP_WRITE_NO_OVERWRITE,
        0, &map);
    if (FAILED(hr)) {
        MP_ERR(ra, "Failed to map vertex buffer: %s\n", mp_HRESULT_to_str(hr));
        return -1;
    }

    char *cdata = map.pData;
    memcpy(cdata + offset, data, size);

    ID3D11DeviceContext_Unmap(p->ctx, (ID3D11Resource *)p->vbuf, 0);

    p->vbuf_used = offset + size;
    return offset;
}
