#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  subjectInfo ;
typedef  int /*<<< orphan*/  sip ;
struct TYPE_10__ {int /*<<< orphan*/ * pbData; int /*<<< orphan*/  cbData; } ;
struct TYPE_9__ {int cbSize; scalar_t__ (* pfGet ) (TYPE_1__*,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;void const* pwsFileName; scalar_t__ hFile; int /*<<< orphan*/ * pgSubjectType; } ;
typedef  TYPE_1__ SIP_SUBJECTINFO ;
typedef  TYPE_1__ SIP_DISPATCH_INFO ;
typedef  int /*<<< orphan*/  HCRYPTMSG ;
typedef  int /*<<< orphan*/  HCERTSTORE ;
typedef  scalar_t__ HANDLE ;
typedef  int /*<<< orphan*/  GUID ;
typedef  scalar_t__ DWORD ;
typedef  TYPE_3__ CERT_BLOB ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CERT_QUERY_CONTENT_FLAG_PKCS7_SIGNED ; 
 scalar_t__ CERT_QUERY_CONTENT_PKCS7_SIGNED_EMBED ; 
 int /*<<< orphan*/  CERT_QUERY_FORMAT_FLAG_BINARY ; 
 int /*<<< orphan*/  CERT_QUERY_OBJECT_BLOB ; 
 scalar_t__ CERT_QUERY_OBJECT_FILE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (void const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC6 (void const*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERROR_OUTOFMEMORY ; 
 int /*<<< orphan*/  E_INVALIDARG ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FILE_ATTRIBUTE_NORMAL ; 
 int /*<<< orphan*/  FILE_SHARE_READ ; 
 int /*<<< orphan*/  GENERIC_READ ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (char*,scalar_t__) ; 
 scalar_t__ FUNC10 (void const*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC12 (TYPE_1__*,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (TYPE_1__*,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static BOOL FUNC14(DWORD dwObjectType,
 const void *pvObject, DWORD dwExpectedContentTypeFlags,
 DWORD *pdwMsgAndCertEncodingType, DWORD *pdwContentType,
 HCERTSTORE *phCertStore, HCRYPTMSG *phMsg)
{
    HANDLE file;
    GUID subject;
    BOOL ret = FALSE;

    FUNC8("%s\n", FUNC10(pvObject));

    if (dwObjectType != CERT_QUERY_OBJECT_FILE)
    {
        FUNC9("don't know what to do for type %d embedded signed messages\n",
         dwObjectType);
        FUNC7(E_INVALIDARG);
        return FALSE;
    }
    file = FUNC2(pvObject, GENERIC_READ, FILE_SHARE_READ,
     NULL, OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, NULL);
    if (file != INVALID_HANDLE_VALUE)
    {
        ret = FUNC6(pvObject, file, &subject);
        if (ret)
        {
            SIP_DISPATCH_INFO sip;

            FUNC11(&sip, 0, sizeof(sip));
            sip.cbSize = sizeof(sip);
            ret = FUNC5(&subject, 0, &sip);
            if (ret)
            {
                SIP_SUBJECTINFO subjectInfo;
                CERT_BLOB blob;
                DWORD encodingType;

                FUNC11(&subjectInfo, 0, sizeof(subjectInfo));
                subjectInfo.cbSize = sizeof(subjectInfo);
                subjectInfo.pgSubjectType = &subject;
                subjectInfo.hFile = file;
                subjectInfo.pwsFileName = pvObject;
                ret = sip.pfGet(&subjectInfo, &encodingType, 0, &blob.cbData,
                 NULL);
                if (ret)
                {
                    blob.pbData = FUNC3(blob.cbData);
                    if (blob.pbData)
                    {
                        ret = sip.pfGet(&subjectInfo, &encodingType, 0,
                         &blob.cbData, blob.pbData);
                        if (ret)
                        {
                            ret = FUNC0(
                             CERT_QUERY_OBJECT_BLOB, &blob,
                             CERT_QUERY_CONTENT_FLAG_PKCS7_SIGNED,
                             CERT_QUERY_FORMAT_FLAG_BINARY,
                             pdwMsgAndCertEncodingType, NULL, NULL,
                             phCertStore, phMsg);
                            if (ret && pdwContentType)
                                *pdwContentType = CERT_QUERY_CONTENT_PKCS7_SIGNED_EMBED;
                        }
                        FUNC4(blob.pbData);
                    }
                    else
                    {
                        FUNC7(ERROR_OUTOFMEMORY);
                        ret = FALSE;
                    }
                }
            }
        }
        FUNC1(file);
    }
    FUNC8("returning %d\n", ret);
    return ret;
}