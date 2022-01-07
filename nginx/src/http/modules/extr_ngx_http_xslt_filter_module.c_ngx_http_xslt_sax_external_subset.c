
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef TYPE_3__* xmlParserCtxtPtr ;
typedef int xmlNodePtr ;
typedef int * xmlDtdPtr ;
typedef TYPE_4__* xmlDocPtr ;
typedef int const xmlChar ;
struct TYPE_14__ {int * dtd; } ;
typedef TYPE_5__ ngx_http_xslt_filter_loc_conf_t ;
struct TYPE_15__ {TYPE_7__* request; } ;
typedef TYPE_6__ ngx_http_xslt_filter_ctx_t ;
struct TYPE_16__ {TYPE_2__* connection; } ;
typedef TYPE_7__ ngx_http_request_t ;
struct TYPE_13__ {int * extSubset; int * children; } ;
struct TYPE_12__ {TYPE_4__* myDoc; TYPE_1__* sax; } ;
struct TYPE_11__ {int log; } ;
struct TYPE_10__ {TYPE_6__* _private; } ;


 int NGX_LOG_DEBUG_HTTP ;
 int NGX_LOG_ERR ;
 TYPE_5__* ngx_http_get_module_loc_conf (TYPE_7__*,int ) ;
 int ngx_http_xslt_filter_module ;
 int ngx_log_debug3 (int ,int ,int ,char*,int const*,int const*,int const*) ;
 int ngx_log_error (int ,int ,int ,char*) ;
 int xmlAddChild (int ,int ) ;
 int xmlAddPrevSibling (int *,int ) ;
 int * xmlCopyDtd (int *) ;

__attribute__((used)) static void
ngx_http_xslt_sax_external_subset(void *data, const xmlChar *name,
    const xmlChar *externalId, const xmlChar *systemId)
{
    xmlParserCtxtPtr ctxt = data;

    xmlDocPtr doc;
    xmlDtdPtr dtd;
    ngx_http_request_t *r;
    ngx_http_xslt_filter_ctx_t *ctx;
    ngx_http_xslt_filter_loc_conf_t *conf;

    ctx = ctxt->sax->_private;
    r = ctx->request;

    conf = ngx_http_get_module_loc_conf(r, ngx_http_xslt_filter_module);

    ngx_log_debug3(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "xslt filter extSubset: \"%s\" \"%s\" \"%s\"",
                   name ? name : (xmlChar *) "",
                   externalId ? externalId : (xmlChar *) "",
                   systemId ? systemId : (xmlChar *) "");

    doc = ctxt->myDoc;







    dtd = xmlCopyDtd(conf->dtd);
    if (dtd == ((void*)0)) {
        ngx_log_error(NGX_LOG_ERR, r->connection->log, 0,
                      "xmlCopyDtd() failed");
        return;
    }

    if (doc->children == ((void*)0)) {
        xmlAddChild((xmlNodePtr) doc, (xmlNodePtr) dtd);

    } else {
        xmlAddPrevSibling(doc->children, (xmlNodePtr) dtd);
    }



    doc->extSubset = dtd;
}
