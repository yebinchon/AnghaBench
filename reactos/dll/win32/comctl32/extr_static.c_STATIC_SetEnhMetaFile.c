
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LONG_PTR ;
typedef int HWND ;
typedef scalar_t__ HENHMETAFILE ;
typedef int DWORD ;


 scalar_t__ GetObjectType (scalar_t__) ;
 int HICON_GWL_OFFSET ;
 scalar_t__ OBJ_ENHMETAFILE ;
 int SS_ENHMETAFILE ;
 int SS_TYPEMASK ;
 int SetWindowLongPtrW (int ,int ,int ) ;
 int WARN (char*) ;

__attribute__((used)) static HENHMETAFILE STATIC_SetEnhMetaFile( HWND hwnd, HENHMETAFILE hEnhMetaFile, DWORD style )
{
    if ((style & SS_TYPEMASK) != SS_ENHMETAFILE) return 0;
    if (hEnhMetaFile && GetObjectType(hEnhMetaFile) != OBJ_ENHMETAFILE)
    {
        WARN("hEnhMetaFile != 0, but it's not an enhanced metafile\n");
        return 0;
    }
    return (HENHMETAFILE)SetWindowLongPtrW( hwnd, HICON_GWL_OFFSET, (LONG_PTR)hEnhMetaFile );
}
