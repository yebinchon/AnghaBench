#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_8__ ;
typedef  struct TYPE_21__   TYPE_7__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_12__ ;
typedef  struct TYPE_14__   TYPE_11__ ;
typedef  struct TYPE_13__   TYPE_10__ ;

/* Type definitions */
struct TYPE_22__ {int /*<<< orphan*/  version; } ;
struct TYPE_21__ {TYPE_1__* enc_data; int /*<<< orphan*/  version; } ;
struct TYPE_19__ {TYPE_12__* digest; TYPE_11__* encrypted; TYPE_10__* enveloped; TYPE_7__* signed_and_enveloped; int /*<<< orphan*/ * data; TYPE_8__* sign; } ;
struct TYPE_20__ {TYPE_4__ d; int /*<<< orphan*/ * type; } ;
struct TYPE_18__ {void* content_type; } ;
struct TYPE_17__ {void* content_type; } ;
struct TYPE_16__ {void* content_type; } ;
struct TYPE_15__ {int /*<<< orphan*/  version; } ;
struct TYPE_14__ {TYPE_3__* enc_data; int /*<<< orphan*/  version; } ;
struct TYPE_13__ {TYPE_2__* enc_data; int /*<<< orphan*/  version; } ;
typedef  TYPE_5__ PKCS7 ;
typedef  int /*<<< orphan*/  ASN1_OBJECT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
#define  NID_pkcs7_data 133 
#define  NID_pkcs7_digest 132 
#define  NID_pkcs7_encrypted 131 
#define  NID_pkcs7_enveloped 130 
#define  NID_pkcs7_signed 129 
#define  NID_pkcs7_signedAndEnveloped 128 
 void* FUNC2 (int const) ; 
 TYPE_12__* FUNC3 () ; 
 TYPE_11__* FUNC4 () ; 
 TYPE_10__* FUNC5 () ; 
 int /*<<< orphan*/  PKCS7_F_PKCS7_SET_TYPE ; 
 int /*<<< orphan*/  PKCS7_R_UNSUPPORTED_CONTENT_TYPE ; 
 int /*<<< orphan*/  FUNC6 (TYPE_8__*) ; 
 TYPE_8__* FUNC7 () ; 
 TYPE_7__* FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC10(PKCS7 *p7, int type)
{
    ASN1_OBJECT *obj;

    /*
     * PKCS7_content_free(p7);
     */
    obj = FUNC2(type);    /* will not fail */

    switch (type) {
    case NID_pkcs7_signed:
        p7->type = obj;
        if ((p7->d.sign = FUNC7()) == NULL)
            goto err;
        if (!FUNC0(p7->d.sign->version, 1)) {
            FUNC6(p7->d.sign);
            p7->d.sign = NULL;
            goto err;
        }
        break;
    case NID_pkcs7_data:
        p7->type = obj;
        if ((p7->d.data = FUNC1()) == NULL)
            goto err;
        break;
    case NID_pkcs7_signedAndEnveloped:
        p7->type = obj;
        if ((p7->d.signed_and_enveloped = FUNC8())
            == NULL)
            goto err;
        if (!FUNC0(p7->d.signed_and_enveloped->version, 1))
            goto err;
        p7->d.signed_and_enveloped->enc_data->content_type
            = FUNC2(NID_pkcs7_data);
        break;
    case NID_pkcs7_enveloped:
        p7->type = obj;
        if ((p7->d.enveloped = FUNC5())
            == NULL)
            goto err;
        if (!FUNC0(p7->d.enveloped->version, 0))
            goto err;
        p7->d.enveloped->enc_data->content_type = FUNC2(NID_pkcs7_data);
        break;
    case NID_pkcs7_encrypted:
        p7->type = obj;
        if ((p7->d.encrypted = FUNC4())
            == NULL)
            goto err;
        if (!FUNC0(p7->d.encrypted->version, 0))
            goto err;
        p7->d.encrypted->enc_data->content_type = FUNC2(NID_pkcs7_data);
        break;

    case NID_pkcs7_digest:
        p7->type = obj;
        if ((p7->d.digest = FUNC3())
            == NULL)
            goto err;
        if (!FUNC0(p7->d.digest->version, 0))
            goto err;
        break;
    default:
        FUNC9(PKCS7_F_PKCS7_SET_TYPE, PKCS7_R_UNSUPPORTED_CONTENT_TYPE);
        goto err;
    }
    return 1;
 err:
    return 0;
}