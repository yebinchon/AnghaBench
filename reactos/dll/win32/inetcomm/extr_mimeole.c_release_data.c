
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int REFIID ;
typedef int IStream ;


 int FIXME (char*,int ) ;
 int IID_IStream ;
 int IStream_Release (int *) ;
 scalar_t__ IsEqualIID (int ,int *) ;
 int debugstr_guid (int ) ;

__attribute__((used)) static void release_data(REFIID riid, void *data)
{
    if(!data) return;

    if(IsEqualIID(riid, &IID_IStream))
        IStream_Release((IStream *)data);
    else
        FIXME("Unhandled data format %s\n", debugstr_guid(riid));
}
