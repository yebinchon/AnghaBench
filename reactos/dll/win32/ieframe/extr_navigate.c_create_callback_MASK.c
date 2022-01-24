#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ULONG ;
struct TYPE_11__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_10__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_9__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_13__ {int ref; int /*<<< orphan*/ * post_data; int /*<<< orphan*/ * binding; TYPE_4__* doc_host; int /*<<< orphan*/ * headers; int /*<<< orphan*/  post_data_len; int /*<<< orphan*/ * url; TYPE_3__ IHttpSecurity_iface; TYPE_2__ IHttpNegotiate_iface; TYPE_1__ IBindStatusCallback_iface; } ;
struct TYPE_12__ {int /*<<< orphan*/  IOleClientSite_iface; } ;
typedef  int /*<<< orphan*/  PBYTE ;
typedef  scalar_t__ LPCWSTR ;
typedef  TYPE_4__ DocHost ;
typedef  TYPE_5__ BindStatusCallback ;

/* Variables and functions */
 int /*<<< orphan*/  BindStatusCallbackVtbl ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HttpNegotiateVtbl ; 
 int /*<<< orphan*/  HttpSecurityVtbl ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (scalar_t__) ; 
 TYPE_5__* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static BindStatusCallback *FUNC5(DocHost *doc_host, LPCWSTR url, PBYTE post_data,
        ULONG post_data_len, LPCWSTR headers)
{
    BindStatusCallback *ret = FUNC3(sizeof(BindStatusCallback));

    ret->IBindStatusCallback_iface.lpVtbl = &BindStatusCallbackVtbl;
    ret->IHttpNegotiate_iface.lpVtbl      = &HttpNegotiateVtbl;
    ret->IHttpSecurity_iface.lpVtbl       = &HttpSecurityVtbl;

    ret->ref = 1;
    ret->url = FUNC2(url);
    ret->post_data = NULL;
    ret->post_data_len = post_data_len;
    ret->headers = headers ? FUNC2(headers) : NULL;

    ret->doc_host = doc_host;
    FUNC1(&doc_host->IOleClientSite_iface);

    ret->binding = NULL;

    if(post_data) {
        ret->post_data = FUNC0(0, post_data_len);
        FUNC4(ret->post_data, post_data, post_data_len);
    }

    return ret;
}