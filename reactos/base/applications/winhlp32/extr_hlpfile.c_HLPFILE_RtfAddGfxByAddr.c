
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RtfData {int dummy; } ;
typedef int ULONG ;
typedef int HLPFILE ;
typedef int BYTE ;
typedef int BOOL ;


 int FALSE ;
 int GET_UINT (int const*,int) ;
 unsigned int GET_USHORT (int const*,int) ;
 int HLPFILE_RtfAddBitmap (struct RtfData*,int *,int const*,int,int) ;
 int HLPFILE_RtfAddMetaFile (struct RtfData*,int *,int const*,int) ;
 int TRUE ;
 int WINE_FIXME (char*,...) ;
 int WINE_TRACE (char*,unsigned int,int) ;

__attribute__((used)) static BOOL HLPFILE_RtfAddGfxByAddr(struct RtfData* rd, HLPFILE *hlpfile,
                                        const BYTE* ref, ULONG size)
{
    unsigned i, numpict;

    numpict = GET_USHORT(ref, 2);
    WINE_TRACE("Got picture magic=%04x #=%d\n", GET_USHORT(ref, 0), numpict);

    for (i = 0; i < numpict; i++)
    {
        const BYTE* beg;
        const BYTE* ptr;
        BYTE type, pack;

        WINE_TRACE("Offset[%d] = %x\n", i, GET_UINT(ref, (1 + i) * 4));
        beg = ptr = ref + GET_UINT(ref, (1 + i) * 4);

        type = *ptr++;
        pack = *ptr++;

        switch (type)
        {
        case 5:
        case 6:
            HLPFILE_RtfAddBitmap(rd, hlpfile, beg, type, pack);
            break;
        case 8:
            HLPFILE_RtfAddMetaFile(rd, hlpfile, beg, pack);
            break;
        default: WINE_FIXME("Unknown type %u\n", type); return FALSE;
        }




        if (numpict != 1) WINE_FIXME("Supporting only one bitmap format per logical bitmap (for now). Using first format\n");
        break;
    }
    return TRUE;
}
