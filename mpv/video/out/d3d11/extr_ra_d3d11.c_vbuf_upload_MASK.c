#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ra_d3d11 {size_t vbuf_size; size_t vbuf_used; int /*<<< orphan*/ * vbuf; int /*<<< orphan*/  ctx; int /*<<< orphan*/  dev; } ;
struct ra {struct ra_d3d11* priv; } ;
struct TYPE_6__ {size_t ByteWidth; int /*<<< orphan*/  CPUAccessFlags; int /*<<< orphan*/  BindFlags; int /*<<< orphan*/  Usage; } ;
struct TYPE_5__ {char* pData; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  ID3D11Resource ;
typedef  int /*<<< orphan*/  ID3D11Buffer ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_1__ D3D11_MAPPED_SUBRESOURCE ;
typedef  TYPE_2__ D3D11_BUFFER_DESC ;

/* Variables and functions */
 int /*<<< orphan*/  D3D11_BIND_VERTEX_BUFFER ; 
 int /*<<< orphan*/  D3D11_CPU_ACCESS_WRITE ; 
 int /*<<< orphan*/  D3D11_MAP_WRITE_DISCARD ; 
 int /*<<< orphan*/  D3D11_MAP_WRITE_NO_OVERWRITE ; 
 int /*<<< orphan*/  D3D11_USAGE_DYNAMIC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (struct ra*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static size_t FUNC8(struct ra *ra, void *data, size_t size)
{
    struct ra_d3d11 *p = ra->priv;
    HRESULT hr;

    // Arbitrary size limit in case there is an insane number of vertices
    if (size > 1e9) {
        FUNC4(ra, "Vertex buffer is too large\n");
        return -1;
    }

    // If the vertex data doesn't fit, realloc the vertex buffer
    if (size > p->vbuf_size) {
        size_t new_size = p->vbuf_size;
        // Arbitrary base size
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
        hr = FUNC3(p->dev, &vbuf_desc, NULL, &new_buf);
        if (FUNC0(hr)) {
            FUNC4(ra, "Failed to create vertex buffer: %s\n",
                   FUNC7(hr));
            return -1;
        }

        FUNC5(p->vbuf);
        p->vbuf = new_buf;
        p->vbuf_size = new_size;
        p->vbuf_used = 0;
    }

    bool discard = false;
    size_t offset = p->vbuf_used;
    if (offset + size > p->vbuf_size) {
        // We reached the end of the buffer, so discard and wrap around
        discard = true;
        offset = 0;
    }

    D3D11_MAPPED_SUBRESOURCE map = { 0 };
    hr = FUNC1(p->ctx, (ID3D11Resource *)p->vbuf, 0,
        discard ? D3D11_MAP_WRITE_DISCARD : D3D11_MAP_WRITE_NO_OVERWRITE,
        0, &map);
    if (FUNC0(hr)) {
        FUNC4(ra, "Failed to map vertex buffer: %s\n", FUNC7(hr));
        return -1;
    }

    char *cdata = map.pData;
    FUNC6(cdata + offset, data, size);

    FUNC2(p->ctx, (ID3D11Resource *)p->vbuf, 0);

    p->vbuf_used = offset + size;
    return offset;
}