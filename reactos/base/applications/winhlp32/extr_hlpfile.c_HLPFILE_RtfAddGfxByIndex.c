
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RtfData {int dummy; } ;
typedef int HLPFILE ;
typedef int BYTE ;
typedef int BOOL ;


 int FALSE ;
 int HLPFILE_FindSubFile (int *,char*,int **,int **) ;
 int HLPFILE_RtfAddGfxByAddr (struct RtfData*,int *,int *,int) ;
 int WINE_TRACE (char*,unsigned int) ;
 int WINE_WARN (char*) ;
 int sprintf (char*,char*,unsigned int) ;

__attribute__((used)) static BOOL HLPFILE_RtfAddGfxByIndex(struct RtfData* rd, HLPFILE *hlpfile,
                                         unsigned index)
{
    char tmp[16];
    BYTE *ref, *end;

    WINE_TRACE("Loading picture #%d\n", index);

    sprintf(tmp, "|bm%u", index);

    if (!HLPFILE_FindSubFile(hlpfile, tmp, &ref, &end)) {WINE_WARN("no sub file\n"); return FALSE;}

    ref += 9;
    return HLPFILE_RtfAddGfxByAddr(rd, hlpfile, ref, end - ref);
}
