#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  HCRYPTMSG ;
typedef  int /*<<< orphan*/  HCERTSTORE ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
#define  CERT_QUERY_OBJECT_BLOB 129 
#define  CERT_QUERY_OBJECT_FILE 128 
 int /*<<< orphan*/  FUNC0 (void const*,int*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (void const*,int*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  E_INVALIDARG ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL FUNC4(DWORD dwObjectType,
 const void *pvObject, DWORD *pdwMsgAndCertEncodingType, DWORD *pdwContentType,
 HCERTSTORE *phCertStore, HCRYPTMSG *phMsg)
{
    switch (dwObjectType)
    {
    case CERT_QUERY_OBJECT_FILE:
        return FUNC1(pvObject,
         pdwMsgAndCertEncodingType, pdwContentType, phCertStore, phMsg);
    case CERT_QUERY_OBJECT_BLOB:
        return FUNC0(pvObject,
         pdwMsgAndCertEncodingType, pdwContentType, phCertStore, phMsg);
    default:
        FUNC2("unimplemented for type %d\n", dwObjectType);
        FUNC3(E_INVALIDARG); /* FIXME: is this the correct error? */
        return FALSE;
    }
}