
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_1__ ;


typedef TYPE_1__* xsltStylesheetPtr ;
typedef int xsltStylesheet ;
struct TYPE_16__ {int dict; int * doc; int * principalData; struct TYPE_16__* principal; int * imports; scalar_t__ attVTs; struct TYPE_16__* mediaType; struct TYPE_16__* doctypeSystem; struct TYPE_16__* doctypePublic; struct TYPE_16__* encoding; struct TYPE_16__* version; struct TYPE_16__* methodURI; struct TYPE_16__* method; struct TYPE_16__* exclPrefixTab; int * nsHash; int * stripSpaces; int * cdataSection; int * variables; int templates; int * parent; } ;


 int XSLT_GET_INTERNAL_NSMAP (TYPE_1__*) ;
 scalar_t__ XSLT_HAS_INTERNAL_NSMAP (TYPE_1__*) ;
 int memset (TYPE_1__*,int,int) ;
 int xmlDictFree (int ) ;
 int xmlDocGetRootElement (int *) ;
 int xmlFree (TYPE_1__*) ;
 int xmlFreeDoc (int *) ;
 int xmlHashFree (int *,int *) ;
 int xsltCleanupStylesheetTree (int *,int ) ;
 int xsltFreeAVTList (scalar_t__) ;
 int xsltFreeAttributeSetsHashes (TYPE_1__*) ;
 int xsltFreeDecimalFormatList (TYPE_1__*) ;
 int xsltFreeExts (TYPE_1__*) ;
 int xsltFreeKeys (TYPE_1__*) ;
 int xsltFreeNamespaceAliasHashes (TYPE_1__*) ;
 int xsltFreePrincipalStylesheetData (int *) ;
 int xsltFreeStackElemList (int *) ;
 int xsltFreeStyleDocuments (TYPE_1__*) ;
 int xsltFreeStylePreComps (TYPE_1__*) ;
 int xsltFreeStylesheetList (int *) ;
 int xsltFreeTemplateHashes (TYPE_1__*) ;
 int xsltFreeTemplateList (int ) ;
 int xsltGenericDebug (int ,char*) ;
 int xsltGenericDebugContext ;
 int xsltRestoreDocumentNamespaces (int ,int *) ;
 int xsltShutdownExts (TYPE_1__*) ;

void
xsltFreeStylesheet(xsltStylesheetPtr style)
{
    if (style == ((void*)0))
        return;
    if ((style->parent == ((void*)0)) && (style->doc))
 xsltCleanupStylesheetTree(style->doc,
     xmlDocGetRootElement(style->doc));


    xsltFreeKeys(style);
    xsltFreeExts(style);
    xsltFreeTemplateHashes(style);
    xsltFreeDecimalFormatList(style);
    xsltFreeTemplateList(style->templates);
    xsltFreeAttributeSetsHashes(style);
    xsltFreeNamespaceAliasHashes(style);
    xsltFreeStylePreComps(style);




    xsltFreeStyleDocuments(style);



    xsltShutdownExts(style);

    if (style->variables != ((void*)0))
        xsltFreeStackElemList(style->variables);
    if (style->cdataSection != ((void*)0))
        xmlHashFree(style->cdataSection, ((void*)0));
    if (style->stripSpaces != ((void*)0))
        xmlHashFree(style->stripSpaces, ((void*)0));
    if (style->nsHash != ((void*)0))
        xmlHashFree(style->nsHash, ((void*)0));
    if (style->exclPrefixTab != ((void*)0))
        xmlFree(style->exclPrefixTab);
    if (style->method != ((void*)0))
        xmlFree(style->method);
    if (style->methodURI != ((void*)0))
        xmlFree(style->methodURI);
    if (style->version != ((void*)0))
        xmlFree(style->version);
    if (style->encoding != ((void*)0))
        xmlFree(style->encoding);
    if (style->doctypePublic != ((void*)0))
        xmlFree(style->doctypePublic);
    if (style->doctypeSystem != ((void*)0))
        xmlFree(style->doctypeSystem);
    if (style->mediaType != ((void*)0))
        xmlFree(style->mediaType);
    if (style->attVTs)
        xsltFreeAVTList(style->attVTs);
    if (style->imports != ((void*)0))
        xsltFreeStylesheetList(style->imports);
    if (style->doc != ((void*)0)) {
        xmlFreeDoc(style->doc);
    }





    xmlDictFree(style->dict);

    memset(style, -1, sizeof(xsltStylesheet));
    xmlFree(style);
}
