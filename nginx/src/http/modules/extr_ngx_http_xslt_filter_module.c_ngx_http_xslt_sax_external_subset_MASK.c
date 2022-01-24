#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_3__* xmlParserCtxtPtr ;
typedef  int /*<<< orphan*/  xmlNodePtr ;
typedef  int /*<<< orphan*/ * xmlDtdPtr ;
typedef  TYPE_4__* xmlDocPtr ;
typedef  int /*<<< orphan*/  const xmlChar ;
struct TYPE_14__ {int /*<<< orphan*/ * dtd; } ;
typedef  TYPE_5__ ngx_http_xslt_filter_loc_conf_t ;
struct TYPE_15__ {TYPE_7__* request; } ;
typedef  TYPE_6__ ngx_http_xslt_filter_ctx_t ;
struct TYPE_16__ {TYPE_2__* connection; } ;
typedef  TYPE_7__ ngx_http_request_t ;
struct TYPE_13__ {int /*<<< orphan*/ * extSubset; int /*<<< orphan*/ * children; } ;
struct TYPE_12__ {TYPE_4__* myDoc; TYPE_1__* sax; } ;
struct TYPE_11__ {int /*<<< orphan*/  log; } ;
struct TYPE_10__ {TYPE_6__* _private; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int /*<<< orphan*/  NGX_LOG_ERR ; 
 TYPE_5__* FUNC0 (TYPE_7__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_http_xslt_filter_module ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(void *data, const xmlChar *name,
    const xmlChar *externalId, const xmlChar *systemId)
{
    xmlParserCtxtPtr ctxt = data;

    xmlDocPtr                         doc;
    xmlDtdPtr                         dtd;
    ngx_http_request_t               *r;
    ngx_http_xslt_filter_ctx_t       *ctx;
    ngx_http_xslt_filter_loc_conf_t  *conf;

    ctx = ctxt->sax->_private;
    r = ctx->request;

    conf = FUNC0(r, ngx_http_xslt_filter_module);

    FUNC1(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "xslt filter extSubset: \"%s\" \"%s\" \"%s\"",
                   name ? name : (xmlChar *) "",
                   externalId ? externalId : (xmlChar *) "",
                   systemId ? systemId : (xmlChar *) "");

    doc = ctxt->myDoc;

#if (NGX_HTTP_XSLT_REUSE_DTD)

    dtd = conf->dtd;

#else

    dtd = FUNC5(conf->dtd);
    if (dtd == NULL) {
        FUNC2(NGX_LOG_ERR, r->connection->log, 0,
                      "xmlCopyDtd() failed");
        return;
    }

    if (doc->children == NULL) {
        FUNC3((xmlNodePtr) doc, (xmlNodePtr) dtd);

    } else {
        FUNC4(doc->children, (xmlNodePtr) dtd);
    }

#endif

    doc->extSubset = dtd;
}