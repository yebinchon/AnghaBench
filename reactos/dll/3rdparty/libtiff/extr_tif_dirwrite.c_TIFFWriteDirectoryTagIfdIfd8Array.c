
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64 ;
typedef int uint32 ;
typedef int uint16 ;
struct TYPE_5__ {int tif_flags; int tif_clientdata; } ;
typedef int TIFFDirEntry ;
typedef TYPE_1__ TIFF ;


 int TIFFErrorExt (int ,char const*,char*) ;
 int TIFFWriteDirectoryTagCheckedIfd8Array (TYPE_1__*,int*,int *,int ,int,int*) ;
 int TIFFWriteDirectoryTagCheckedIfdArray (TYPE_1__*,int*,int *,int ,int,int*) ;
 int TIFF_BIGTIFF ;
 int _TIFFfree (int*) ;
 int* _TIFFmalloc (int) ;

__attribute__((used)) static int
TIFFWriteDirectoryTagIfdIfd8Array(TIFF* tif, uint32* ndir, TIFFDirEntry* dir, uint16 tag, uint32 count, uint64* value)
{
    static const char module[] = "TIFFWriteDirectoryTagIfdIfd8Array";
    uint64* ma;
    uint32 mb;
    uint32* p;
    uint32* q;
    int o;


    if (dir==((void*)0))
    {
        (*ndir)++;
        return(1);
    }


    if( tif->tif_flags&TIFF_BIGTIFF )
        return TIFFWriteDirectoryTagCheckedIfd8Array(tif,ndir,dir,
                                                     tag,count,value);






    p = _TIFFmalloc(count*sizeof(uint32));
    if (p==((void*)0))
    {
        TIFFErrorExt(tif->tif_clientdata,module,"Out of memory");
        return(0);
    }

    for (q=p, ma=value, mb=0; mb<count; ma++, mb++, q++)
    {
        if (*ma>0xFFFFFFFF)
        {
            TIFFErrorExt(tif->tif_clientdata,module,
                         "Attempt to write value larger than 0xFFFFFFFF in Classic TIFF file.");
            _TIFFfree(p);
            return(0);
        }
        *q= (uint32)(*ma);
    }

    o=TIFFWriteDirectoryTagCheckedIfdArray(tif,ndir,dir,tag,count,p);
    _TIFFfree(p);

    return(o);
}
