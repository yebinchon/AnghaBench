
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int size ;
typedef char WCHAR ;
struct TYPE_4__ {int pStorage; } ;
typedef int * LPWSTR ;
typedef int * LPCSTR ;
typedef int IStream ;
typedef int HRESULT ;
typedef int DWORD ;
typedef TYPE_1__ CHMInfo ;


 scalar_t__ FAILED (int ) ;
 int * GetChmString (TYPE_1__*,int) ;
 int IStorage_OpenStream (int ,char const*,int *,int ,int ,int **) ;
 int IStream_Read (int *,int*,int,int*) ;
 int IStream_Release (int *) ;
 int STGM_READ ;
 int TRACE (char*,int ) ;
 int WARN (char*,int ) ;
 int debugstr_a (int *) ;
 int* heap_alloc (int) ;
 int heap_free (int*) ;
 int * strdupAtoW (int *) ;

LPWSTR FindContextAlias(CHMInfo *chm, DWORD index)
{
    IStream *ivb_stream;
    DWORD size, read, i;
    DWORD *buf;
    LPCSTR ret = ((void*)0);
    HRESULT hres;

    static const WCHAR wszIVB[] = {'#','I','V','B',0};

    hres = IStorage_OpenStream(chm->pStorage, wszIVB, ((void*)0), STGM_READ, 0, &ivb_stream);
    if(FAILED(hres)) {
        WARN("Could not open #IVB stream: %08x\n", hres);
        return ((void*)0);
    }

    hres = IStream_Read(ivb_stream, &size, sizeof(size), &read);
    if(FAILED(hres)) {
        WARN("Read failed: %08x\n", hres);
        IStream_Release(ivb_stream);
        return ((void*)0);
    }

    buf = heap_alloc(size);
    hres = IStream_Read(ivb_stream, buf, size, &read);
    IStream_Release(ivb_stream);
    if(FAILED(hres)) {
        WARN("Read failed: %08x\n", hres);
        heap_free(buf);
        return ((void*)0);
    }

    size /= 2*sizeof(DWORD);

    for(i=0; i<size; i++) {
        if(buf[2*i] == index) {
            ret = GetChmString(chm, buf[2*i+1]);
            break;
        }
    }

    heap_free(buf);

    TRACE("returning %s\n", debugstr_a(ret));
    return strdupAtoW(ret);
}
