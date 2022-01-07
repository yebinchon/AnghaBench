
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MPEGSplitterImpl ;
typedef int * LPVOID ;
typedef int HRESULT ;


 int S_OK ;
 int TRACE (char*,int *) ;

__attribute__((used)) static HRESULT MPEGSplitter_cleanup(LPVOID iface)
{
    MPEGSplitterImpl *This = iface;

    TRACE("(%p)\n", This);

    return S_OK;
}
