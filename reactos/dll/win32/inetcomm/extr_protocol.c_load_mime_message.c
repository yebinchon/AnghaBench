
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IStream ;
typedef int IMimeMessage ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int IMimeMessage_InitNew (int *) ;
 int IMimeMessage_Load (int *,int *) ;
 int IMimeMessage_Release (int *) ;
 int MimeMessage_create (int *,void**) ;
 int S_OK ;

__attribute__((used)) static HRESULT load_mime_message(IStream *stream, IMimeMessage **ret)
{
    IMimeMessage *mime_message;
    HRESULT hres;

    hres = MimeMessage_create(((void*)0), (void**)&mime_message);
    if(FAILED(hres))
        return hres;

    IMimeMessage_InitNew(mime_message);

    hres = IMimeMessage_Load(mime_message, stream);
    if(FAILED(hres)) {
        IMimeMessage_Release(mime_message);
        return hres;
    }

    *ret = mime_message;
    return S_OK;
}
