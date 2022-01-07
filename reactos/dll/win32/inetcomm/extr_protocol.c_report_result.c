
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * sink; } ;
typedef TYPE_1__ MimeHtmlProtocol ;
typedef int HRESULT ;


 int ERROR_SUCCESS ;
 int IInternetProtocolSink_Release (int *) ;
 int IInternetProtocolSink_ReportResult (int *,int ,int ,int *) ;

__attribute__((used)) static HRESULT report_result(MimeHtmlProtocol *protocol, HRESULT result)
{
    if(protocol->sink) {
        IInternetProtocolSink_ReportResult(protocol->sink, result, ERROR_SUCCESS, ((void*)0));
        IInternetProtocolSink_Release(protocol->sink);
        protocol->sink = ((void*)0);
    }

    return result;
}
