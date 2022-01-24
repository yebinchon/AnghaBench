#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct wined3d_vertex_declaration {int dummy; } ;
struct ddraw {int numConvertedDecls; int declArraySize; struct FvfToDecl* decls; int /*<<< orphan*/  wined3d_device; } ;
struct FvfToDecl {scalar_t__ fvf; struct wined3d_vertex_declaration* decl; } ;
typedef  int /*<<< orphan*/  convertedDecls ;
typedef  scalar_t__ HRESULT ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,...) ; 
 int /*<<< orphan*/  ddraw_null_wined3d_parent_ops ; 
 struct FvfToDecl* FUNC1 (struct FvfToDecl*,unsigned int) ; 
 unsigned int FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct FvfToDecl*,struct FvfToDecl*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__,struct ddraw*,int /*<<< orphan*/ *,struct wined3d_vertex_declaration**) ; 
 int /*<<< orphan*/  FUNC5 (struct wined3d_vertex_declaration*) ; 

struct wined3d_vertex_declaration *FUNC6(struct ddraw *This, DWORD fvf)
{
    struct wined3d_vertex_declaration *pDecl = NULL;
    HRESULT hr;
    int p, low, high; /* deliberately signed */
    struct FvfToDecl *convertedDecls = This->decls;

    FUNC0("Searching for declaration for fvf %08x... ", fvf);

    low = 0;
    high = This->numConvertedDecls - 1;
    while(low <= high) {
        p = (low + high) >> 1;
        FUNC0("%d ", p);
        if(convertedDecls[p].fvf == fvf) {
            FUNC0("found %p\n", convertedDecls[p].decl);
            return convertedDecls[p].decl;
        } else if(convertedDecls[p].fvf < fvf) {
            low = p + 1;
        } else {
            high = p - 1;
        }
    }
    FUNC0("not found. Creating and inserting at position %d.\n", low);

    hr = FUNC4(This->wined3d_device,
            fvf, This, &ddraw_null_wined3d_parent_ops, &pDecl);
    if (hr != S_OK) return NULL;

    if (This->declArraySize == This->numConvertedDecls)
    {
        unsigned int grow = FUNC2(This->declArraySize / 2, 8);

        if (!(convertedDecls = FUNC1(convertedDecls,
                (This->numConvertedDecls + grow) * sizeof(*convertedDecls))))
        {
            FUNC5(pDecl);
            return NULL;
        }
        This->decls = convertedDecls;
        This->declArraySize += grow;
    }

    FUNC3(convertedDecls + low + 1, convertedDecls + low, sizeof(convertedDecls[0]) * (This->numConvertedDecls - low));
    convertedDecls[low].decl = pDecl;
    convertedDecls[low].fvf = fvf;
    This->numConvertedDecls++;

    FUNC0("Returning %p. %d decls in array\n", pDecl, This->numConvertedDecls);
    return pDecl;
}