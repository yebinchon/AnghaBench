
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int subjectInfo ;
typedef int sip ;
struct TYPE_10__ {int * pbData; int cbData; } ;
struct TYPE_9__ {int cbSize; scalar_t__ (* pfGet ) (TYPE_1__*,scalar_t__*,int ,int *,int *) ;void const* pwsFileName; scalar_t__ hFile; int * pgSubjectType; } ;
typedef TYPE_1__ SIP_SUBJECTINFO ;
typedef TYPE_1__ SIP_DISPATCH_INFO ;
typedef int HCRYPTMSG ;
typedef int HCERTSTORE ;
typedef scalar_t__ HANDLE ;
typedef int GUID ;
typedef scalar_t__ DWORD ;
typedef TYPE_3__ CERT_BLOB ;
typedef scalar_t__ BOOL ;


 int CERT_QUERY_CONTENT_FLAG_PKCS7_SIGNED ;
 scalar_t__ CERT_QUERY_CONTENT_PKCS7_SIGNED_EMBED ;
 int CERT_QUERY_FORMAT_FLAG_BINARY ;
 int CERT_QUERY_OBJECT_BLOB ;
 scalar_t__ CERT_QUERY_OBJECT_FILE ;
 scalar_t__ CRYPT_QueryMessageObject (int ,TYPE_3__*,int ,int ,scalar_t__*,int *,int *,int *,int *) ;
 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileW (void const*,int ,int ,int *,int ,int ,int *) ;
 int * CryptMemAlloc (int ) ;
 int CryptMemFree (int *) ;
 scalar_t__ CryptSIPLoad (int *,int ,TYPE_1__*) ;
 scalar_t__ CryptSIPRetrieveSubjectGuid (void const*,scalar_t__,int *) ;
 int ERROR_OUTOFMEMORY ;
 int E_INVALIDARG ;
 scalar_t__ FALSE ;
 int FILE_ATTRIBUTE_NORMAL ;
 int FILE_SHARE_READ ;
 int GENERIC_READ ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int OPEN_EXISTING ;
 int SetLastError (int ) ;
 int TRACE (char*,scalar_t__) ;
 int WARN (char*,scalar_t__) ;
 scalar_t__ debugstr_w (void const*) ;
 int memset (TYPE_1__*,int ,int) ;
 scalar_t__ stub1 (TYPE_1__*,scalar_t__*,int ,int *,int *) ;
 scalar_t__ stub2 (TYPE_1__*,scalar_t__*,int ,int *,int *) ;

__attribute__((used)) static BOOL CRYPT_QueryEmbeddedMessageObject(DWORD dwObjectType,
 const void *pvObject, DWORD dwExpectedContentTypeFlags,
 DWORD *pdwMsgAndCertEncodingType, DWORD *pdwContentType,
 HCERTSTORE *phCertStore, HCRYPTMSG *phMsg)
{
    HANDLE file;
    GUID subject;
    BOOL ret = FALSE;

    TRACE("%s\n", debugstr_w(pvObject));

    if (dwObjectType != CERT_QUERY_OBJECT_FILE)
    {
        WARN("don't know what to do for type %d embedded signed messages\n",
         dwObjectType);
        SetLastError(E_INVALIDARG);
        return FALSE;
    }
    file = CreateFileW(pvObject, GENERIC_READ, FILE_SHARE_READ,
     ((void*)0), OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, ((void*)0));
    if (file != INVALID_HANDLE_VALUE)
    {
        ret = CryptSIPRetrieveSubjectGuid(pvObject, file, &subject);
        if (ret)
        {
            SIP_DISPATCH_INFO sip;

            memset(&sip, 0, sizeof(sip));
            sip.cbSize = sizeof(sip);
            ret = CryptSIPLoad(&subject, 0, &sip);
            if (ret)
            {
                SIP_SUBJECTINFO subjectInfo;
                CERT_BLOB blob;
                DWORD encodingType;

                memset(&subjectInfo, 0, sizeof(subjectInfo));
                subjectInfo.cbSize = sizeof(subjectInfo);
                subjectInfo.pgSubjectType = &subject;
                subjectInfo.hFile = file;
                subjectInfo.pwsFileName = pvObject;
                ret = sip.pfGet(&subjectInfo, &encodingType, 0, &blob.cbData,
                 ((void*)0));
                if (ret)
                {
                    blob.pbData = CryptMemAlloc(blob.cbData);
                    if (blob.pbData)
                    {
                        ret = sip.pfGet(&subjectInfo, &encodingType, 0,
                         &blob.cbData, blob.pbData);
                        if (ret)
                        {
                            ret = CRYPT_QueryMessageObject(
                             CERT_QUERY_OBJECT_BLOB, &blob,
                             CERT_QUERY_CONTENT_FLAG_PKCS7_SIGNED,
                             CERT_QUERY_FORMAT_FLAG_BINARY,
                             pdwMsgAndCertEncodingType, ((void*)0), ((void*)0),
                             phCertStore, phMsg);
                            if (ret && pdwContentType)
                                *pdwContentType = CERT_QUERY_CONTENT_PKCS7_SIGNED_EMBED;
                        }
                        CryptMemFree(blob.pbData);
                    }
                    else
                    {
                        SetLastError(ERROR_OUTOFMEMORY);
                        ret = FALSE;
                    }
                }
            }
        }
        CloseHandle(file);
    }
    TRACE("returning %d\n", ret);
    return ret;
}
