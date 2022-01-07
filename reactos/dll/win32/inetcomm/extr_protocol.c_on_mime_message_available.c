
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_15__ {int * member_0; } ;
struct TYPE_14__ {int sink; int stream; scalar_t__ location; } ;
struct TYPE_12__ {int pwszVal; } ;
struct TYPE_13__ {TYPE_1__ u; void* vt; } ;
typedef TYPE_2__ PROPVARIANT ;
typedef TYPE_3__ MimeHtmlProtocol ;
typedef int IMimeMessage ;
typedef int IMimeBody ;
typedef scalar_t__ HRESULT ;
typedef int HBODY ;
typedef TYPE_4__ FINDBODY ;
typedef int BOOL ;


 int BINDSTATUS_MIMETYPEAVAILABLE ;
 int BSCF_AVAILABLEDATASIZEUNKNOWN ;
 int BSCF_DATAFULLYAVAILABLE ;
 int BSCF_FIRSTDATANOTIFICATION ;
 int BSCF_INTERMEDIATEDATANOTIFICATION ;
 int BSCF_LASTDATANOTIFICATION ;
 scalar_t__ FAILED (scalar_t__) ;
 int FALSE ;
 int IET_DECODED ;
 int IID_IMimeBody ;
 int IInternetProtocolSink_ReportData (int ,int,int ,int ) ;
 scalar_t__ IInternetProtocolSink_ReportProgress (int ,int ,int ) ;
 scalar_t__ IMimeBody_GetData (int *,int ,int *) ;
 scalar_t__ IMimeBody_GetProp (int *,char*,int ,TYPE_2__*) ;
 scalar_t__ IMimeMessage_BindToObject (int *,int ,int *,void**) ;
 scalar_t__ IMimeMessage_FindFirst (int *,TYPE_4__*,int *) ;
 scalar_t__ IMimeMessage_FindNext (int *,TYPE_4__*,int *) ;
 scalar_t__ IMimeMessage_GetBodyProp (int *,int ,char*,int ,TYPE_2__*) ;
 scalar_t__ MIME_E_NOT_FOUND ;
 int PropVariantClear (TYPE_2__*) ;
 scalar_t__ SUCCEEDED (scalar_t__) ;
 scalar_t__ S_OK ;
 void* VT_LPWSTR ;
 int WARN (char*,int ) ;
 int debugstr_w (scalar_t__) ;
 int lstrcmpW (scalar_t__,int ) ;
 scalar_t__ report_result (TYPE_3__*,scalar_t__) ;

__attribute__((used)) static HRESULT on_mime_message_available(MimeHtmlProtocol *protocol, IMimeMessage *mime_message)
{
    FINDBODY find = {((void*)0)};
    IMimeBody *mime_body;
    PROPVARIANT value;
    HBODY body;
    HRESULT hres;

    hres = IMimeMessage_FindFirst(mime_message, &find, &body);
    if(FAILED(hres))
        return report_result(protocol, hres);

    if(protocol->location) {
        BOOL found = FALSE;
        do {
            hres = IMimeMessage_FindNext(mime_message, &find, &body);
            if(FAILED(hres)) {
                WARN("location %s not found\n", debugstr_w(protocol->location));
                return report_result(protocol, hres);
            }

            value.vt = VT_LPWSTR;
            hres = IMimeMessage_GetBodyProp(mime_message, body, "content-location", 0, &value);
            if(hres == MIME_E_NOT_FOUND)
                continue;
            if(FAILED(hres))
                return report_result(protocol, hres);

            found = !lstrcmpW(protocol->location, value.u.pwszVal);
            PropVariantClear(&value);
        }while(!found);
    }else {
        hres = IMimeMessage_FindNext(mime_message, &find, &body);
        if(FAILED(hres)) {
            WARN("location %s not found\n", debugstr_w(protocol->location));
            return report_result(protocol, hres);
        }
    }

    hres = IMimeMessage_BindToObject(mime_message, body, &IID_IMimeBody, (void**)&mime_body);
    if(FAILED(hres))
        return report_result(protocol, hres);

    value.vt = VT_LPWSTR;
    hres = IMimeBody_GetProp(mime_body, "content-type", 0, &value);
    if(SUCCEEDED(hres)) {
        hres = IInternetProtocolSink_ReportProgress(protocol->sink, BINDSTATUS_MIMETYPEAVAILABLE, value.u.pwszVal);
        PropVariantClear(&value);
    }



    hres = IMimeBody_GetData(mime_body, IET_DECODED, &protocol->stream);
    if(FAILED(hres))
        return report_result(protocol, hres);

    IInternetProtocolSink_ReportData(protocol->sink, BSCF_FIRSTDATANOTIFICATION
                                     | BSCF_INTERMEDIATEDATANOTIFICATION
                                     | BSCF_LASTDATANOTIFICATION
                                     | BSCF_DATAFULLYAVAILABLE
                                     | BSCF_AVAILABLEDATASIZEUNKNOWN, 0, 0);

    return report_result(protocol, S_OK);
}
