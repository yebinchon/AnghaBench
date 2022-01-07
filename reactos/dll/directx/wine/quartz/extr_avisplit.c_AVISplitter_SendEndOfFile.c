
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * ppPins; } ;
struct TYPE_5__ {TYPE_1__ Parser; } ;
typedef int IPin ;
typedef int HRESULT ;
typedef int DWORD ;
typedef TYPE_2__ AVISplitterImpl ;


 int IPin_ConnectedTo (int ,int **) ;
 int IPin_EndOfStream (int *) ;
 int IPin_Release (int *) ;
 scalar_t__ SUCCEEDED (int ) ;
 int S_FALSE ;
 int TRACE (char*,...) ;

__attribute__((used)) static HRESULT AVISplitter_SendEndOfFile(AVISplitterImpl *This, DWORD streamnumber)
{
    IPin* ppin = ((void*)0);
    HRESULT hr;

    TRACE("End of file reached\n");

    hr = IPin_ConnectedTo(This->Parser.ppPins[streamnumber+1], &ppin);
    if (SUCCEEDED(hr))
    {
        hr = IPin_EndOfStream(ppin);
        IPin_Release(ppin);
    }
    TRACE("--> %x\n", hr);


    return S_FALSE;
}
