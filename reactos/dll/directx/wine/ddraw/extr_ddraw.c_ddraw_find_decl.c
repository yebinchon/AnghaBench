
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_vertex_declaration {int dummy; } ;
struct ddraw {int numConvertedDecls; int declArraySize; struct FvfToDecl* decls; int wined3d_device; } ;
struct FvfToDecl {scalar_t__ fvf; struct wined3d_vertex_declaration* decl; } ;
typedef int convertedDecls ;
typedef scalar_t__ HRESULT ;
typedef scalar_t__ DWORD ;


 scalar_t__ S_OK ;
 int TRACE (char*,scalar_t__,...) ;
 int ddraw_null_wined3d_parent_ops ;
 struct FvfToDecl* heap_realloc (struct FvfToDecl*,unsigned int) ;
 unsigned int max (int,int) ;
 int memmove (struct FvfToDecl*,struct FvfToDecl*,int) ;
 scalar_t__ wined3d_vertex_declaration_create_from_fvf (int ,scalar_t__,struct ddraw*,int *,struct wined3d_vertex_declaration**) ;
 int wined3d_vertex_declaration_decref (struct wined3d_vertex_declaration*) ;

struct wined3d_vertex_declaration *ddraw_find_decl(struct ddraw *This, DWORD fvf)
{
    struct wined3d_vertex_declaration *pDecl = ((void*)0);
    HRESULT hr;
    int p, low, high;
    struct FvfToDecl *convertedDecls = This->decls;

    TRACE("Searching for declaration for fvf %08x... ", fvf);

    low = 0;
    high = This->numConvertedDecls - 1;
    while(low <= high) {
        p = (low + high) >> 1;
        TRACE("%d ", p);
        if(convertedDecls[p].fvf == fvf) {
            TRACE("found %p\n", convertedDecls[p].decl);
            return convertedDecls[p].decl;
        } else if(convertedDecls[p].fvf < fvf) {
            low = p + 1;
        } else {
            high = p - 1;
        }
    }
    TRACE("not found. Creating and inserting at position %d.\n", low);

    hr = wined3d_vertex_declaration_create_from_fvf(This->wined3d_device,
            fvf, This, &ddraw_null_wined3d_parent_ops, &pDecl);
    if (hr != S_OK) return ((void*)0);

    if (This->declArraySize == This->numConvertedDecls)
    {
        unsigned int grow = max(This->declArraySize / 2, 8);

        if (!(convertedDecls = heap_realloc(convertedDecls,
                (This->numConvertedDecls + grow) * sizeof(*convertedDecls))))
        {
            wined3d_vertex_declaration_decref(pDecl);
            return ((void*)0);
        }
        This->decls = convertedDecls;
        This->declArraySize += grow;
    }

    memmove(convertedDecls + low + 1, convertedDecls + low, sizeof(convertedDecls[0]) * (This->numConvertedDecls - low));
    convertedDecls[low].decl = pDecl;
    convertedDecls[low].fvf = fvf;
    This->numConvertedDecls++;

    TRACE("Returning %p. %d decls in array\n", pDecl, This->numConvertedDecls);
    return pDecl;
}
