
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int strings_size; int ** strings; int strings_stream; } ;
struct TYPE_5__ {int QuadPart; } ;
typedef int * LPCSTR ;
typedef TYPE_1__ LARGE_INTEGER ;
typedef int HRESULT ;
typedef int DWORD ;
typedef TYPE_2__ CHMInfo ;


 int BLOCK_BITS ;
 int BLOCK_MASK ;
 int BLOCK_SIZE ;
 scalar_t__ FAILED (int ) ;
 int IStream_Read (int ,int *,int ,int*) ;
 int IStream_Seek (int ,TYPE_1__,int ,int *) ;
 int STREAM_SEEK_SET ;
 int TRACE (char*,int,int ) ;
 int WARN (char*,int ) ;
 int debugstr_a (int *) ;
 int * heap_alloc (int ) ;
 int ** heap_alloc_zero (int) ;
 int heap_free (int *) ;
 int ** heap_realloc_zero (int **,int) ;

__attribute__((used)) static LPCSTR GetChmString(CHMInfo *chm, DWORD offset)
{
    LPCSTR str;

    if(!chm->strings_stream)
        return ((void*)0);

    if(chm->strings_size <= (offset >> BLOCK_BITS)) {
        chm->strings_size = (offset >> BLOCK_BITS)+1;
        if(chm->strings)
            chm->strings = heap_realloc_zero(chm->strings,
                    chm->strings_size*sizeof(char*));
        else
            chm->strings = heap_alloc_zero(
                    chm->strings_size*sizeof(char*));

    }

    if(!chm->strings[offset >> BLOCK_BITS]) {
        LARGE_INTEGER pos;
        DWORD read;
        HRESULT hres;

        pos.QuadPart = offset & ~BLOCK_MASK;
        hres = IStream_Seek(chm->strings_stream, pos, STREAM_SEEK_SET, ((void*)0));
        if(FAILED(hres)) {
            WARN("Seek failed: %08x\n", hres);
            return ((void*)0);
        }

        chm->strings[offset >> BLOCK_BITS] = heap_alloc(BLOCK_SIZE);

        hres = IStream_Read(chm->strings_stream, chm->strings[offset >> BLOCK_BITS],
                            BLOCK_SIZE, &read);
        if(FAILED(hres)) {
            WARN("Read failed: %08x\n", hres);
            heap_free(chm->strings[offset >> BLOCK_BITS]);
            chm->strings[offset >> BLOCK_BITS] = ((void*)0);
            return ((void*)0);
        }
    }

    str = chm->strings[offset >> BLOCK_BITS] + (offset & BLOCK_MASK);
    TRACE("offset %#x => %s\n", offset, debugstr_a(str));
    return str;
}
