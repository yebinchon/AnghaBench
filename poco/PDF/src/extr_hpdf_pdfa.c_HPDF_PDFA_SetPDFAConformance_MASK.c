#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  catalog; int /*<<< orphan*/  pdf_version; int /*<<< orphan*/  xref; int /*<<< orphan*/  mmgr; } ;
struct TYPE_10__ {int /*<<< orphan*/  stream; } ;
typedef  scalar_t__ HPDF_STATUS ;
typedef  int HPDF_PDFAType ;
typedef  TYPE_1__* HPDF_OutputIntent ;
typedef  TYPE_2__* HPDF_Doc ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char const*) ; 
 char const* DC_CREATOR_ENDTAG ; 
 char const* DC_CREATOR_STARTTAG ; 
 char const* DC_DESCRIPTION_ENDTAG ; 
 char const* DC_DESCRIPTION_STARTTAG ; 
 char const* DC_FOOTER ; 
 char const* DC_HEADER ; 
 char const* DC_TITLE_ENDTAG ; 
 char const* DC_TITLE_STARTTAG ; 
 char const* FOOTER ; 
 char const* HEADER ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,char*) ; 
 scalar_t__ FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  HPDF_INFO_AUTHOR ; 
 int /*<<< orphan*/  HPDF_INFO_CREATION_DATE ; 
 int /*<<< orphan*/  HPDF_INFO_CREATOR ; 
 int /*<<< orphan*/  HPDF_INFO_KEYWORDS ; 
 int /*<<< orphan*/  HPDF_INFO_MOD_DATE ; 
 int /*<<< orphan*/  HPDF_INFO_PRODUCER ; 
 int /*<<< orphan*/  HPDF_INFO_SUBJECT ; 
 int /*<<< orphan*/  HPDF_INFO_TITLE ; 
 scalar_t__ HPDF_INVALID_DOCUMENT ; 
 scalar_t__ HPDF_INVALID_STREAM ; 
 scalar_t__ HPDF_OK ; 
#define  HPDF_PDFA_1A 129 
#define  HPDF_PDFA_1B 128 
 scalar_t__ FUNC6 (TYPE_2__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  HPDF_VER_14 ; 
 char const* PDFAID_PDFA1A ; 
 char const* PDFAID_PDFA1B ; 
 char const* PDF_FOOTER ; 
 char const* PDF_HEADER ; 
 char const* PDF_KEYWORDS_ENDTAG ; 
 char const* PDF_KEYWORDS_STARTTAG ; 
 char const* PDF_PRODUCER_ENDTAG ; 
 char const* PDF_PRODUCER_STARTTAG ; 
 char const* XMP_CREATE_DATE_ENDTAG ; 
 char const* XMP_CREATE_DATE_STARTTAG ; 
 char const* XMP_CREATORTOOL_ENDTAG ; 
 char const* XMP_CREATORTOOL_STARTTAG ; 
 char const* XMP_FOOTER ; 
 char const* XMP_HEADER ; 
 char const* XMP_MOD_DATE_ENDTAG ; 
 char const* XMP_MOD_DATE_STARTTAG ; 

HPDF_STATUS
FUNC8 (HPDF_Doc pdf,HPDF_PDFAType pdfatype)
{
    HPDF_OutputIntent xmp;
    HPDF_STATUS ret;

    const char *dc_title       = NULL;
    const char *dc_creator     = NULL;
    const char *dc_description = NULL;

    const char *xmp_CreatorTool = NULL;
    const char *xmp_CreateDate  = NULL;
    const char *xmp_ModifyDate  = NULL;

    const char *pdf_Keywords    = NULL;
    const char *pdf_Producer    = NULL;

    const char *info = NULL;

    if (!FUNC5(pdf)) {
      return HPDF_INVALID_DOCUMENT;
    }

    dc_title       = (const char *)FUNC4(pdf, HPDF_INFO_TITLE);
    dc_creator     = (const char *)FUNC4(pdf, HPDF_INFO_AUTHOR);
    dc_description = (const char *)FUNC4(pdf, HPDF_INFO_SUBJECT);

    xmp_CreateDate  = (const char *)FUNC4(pdf, HPDF_INFO_CREATION_DATE);
    xmp_ModifyDate  = (const char *)FUNC4(pdf, HPDF_INFO_MOD_DATE);
    xmp_CreatorTool = (const char *)FUNC4(pdf, HPDF_INFO_CREATOR);

    pdf_Keywords = (const char *)FUNC4(pdf, HPDF_INFO_KEYWORDS);
    pdf_Producer = (const char *)FUNC4(pdf, HPDF_INFO_PRODUCER);

    if((dc_title != NULL) || (dc_creator != NULL) || (dc_description != NULL)
       || (xmp_CreateDate != NULL) || (xmp_ModifyDate != NULL) || (xmp_CreatorTool != NULL)
       || (pdf_Keywords != NULL)) {

        xmp = FUNC1(pdf->mmgr,pdf->xref);
        if (!xmp) {
          return HPDF_INVALID_STREAM;
        }

        /* Update the PDF number version */
        pdf->pdf_version = HPDF_VER_14;

        FUNC3(xmp,"Type","Metadata");
        FUNC3(xmp,"SubType","XML");

        ret = HPDF_OK;
        ret += FUNC7(xmp->stream, HEADER);

        /* Add the dc block */
        if((dc_title != NULL) || (dc_creator != NULL) || (dc_description != NULL)) {
            ret += FUNC7(xmp->stream, DC_HEADER);

            if(dc_title != NULL) {
                ret += FUNC7(xmp->stream, DC_TITLE_STARTTAG);
                ret += FUNC7(xmp->stream, dc_title);
                ret += FUNC7(xmp->stream, DC_TITLE_ENDTAG);
            }

            if(dc_creator != NULL) {
                ret += FUNC7(xmp->stream, DC_CREATOR_STARTTAG);
                ret += FUNC7(xmp->stream, dc_creator);
                ret += FUNC7(xmp->stream, DC_CREATOR_ENDTAG);
            }

            if(dc_description != NULL) {
                ret += FUNC7(xmp->stream, DC_DESCRIPTION_STARTTAG);
                ret += FUNC7(xmp->stream, dc_description);
                ret += FUNC7(xmp->stream, DC_DESCRIPTION_ENDTAG);
            }

            ret += FUNC7(xmp->stream, DC_FOOTER);
        }

        /* Add the xmp block */
        if((xmp_CreateDate != NULL) || (xmp_ModifyDate != NULL) || (xmp_CreatorTool != NULL)) {
            ret += FUNC7(xmp->stream, XMP_HEADER);

            /* Add CreateDate, ModifyDate, and CreatorTool */
            if(xmp_CreatorTool != NULL) {
                ret += FUNC7(xmp->stream, XMP_CREATORTOOL_STARTTAG);
                ret += FUNC7(xmp->stream, xmp_CreatorTool);
                ret += FUNC7(xmp->stream, XMP_CREATORTOOL_ENDTAG);
            }

            if(xmp_CreateDate != NULL) {
                ret += FUNC7(xmp->stream, XMP_CREATE_DATE_STARTTAG);
                /* Convert date to XMP compatible format */
                ret += FUNC0(xmp->stream, xmp_CreateDate);
                ret += FUNC7(xmp->stream, XMP_CREATE_DATE_ENDTAG);
            }

            if(xmp_ModifyDate != NULL) {
                ret += FUNC7(xmp->stream, XMP_MOD_DATE_STARTTAG);
                ret += FUNC0(xmp->stream, xmp_ModifyDate);
                ret += FUNC7(xmp->stream, XMP_MOD_DATE_ENDTAG);
            }

            ret += FUNC7(xmp->stream, XMP_FOOTER);
        }

        /* Add the pdf block */
        if((pdf_Keywords != NULL) || (pdf_Producer != NULL)) {
            ret += FUNC7(xmp->stream, PDF_HEADER);

            if(pdf_Keywords != NULL) {
                ret += FUNC7(xmp->stream, PDF_KEYWORDS_STARTTAG);
                ret += FUNC7(xmp->stream, pdf_Keywords);
                ret += FUNC7(xmp->stream, PDF_KEYWORDS_ENDTAG);
            }

            if(pdf_Producer != NULL) {
                ret += FUNC7(xmp->stream, PDF_PRODUCER_STARTTAG);
                ret += FUNC7(xmp->stream, pdf_Producer);
                ret += FUNC7(xmp->stream, PDF_PRODUCER_ENDTAG);
            }

            ret += FUNC7(xmp->stream, PDF_FOOTER);
        }

        /* Add the pdfaid block */
        switch(pdfatype) {
          case HPDF_PDFA_1A:
            ret += FUNC7(xmp->stream, PDFAID_PDFA1A);
            break;
          case HPDF_PDFA_1B:
            ret += FUNC7(xmp->stream, PDFAID_PDFA1B);
            break;
        }

        ret += FUNC7(xmp->stream, FOOTER);

        if (ret != HPDF_OK) {
          return HPDF_INVALID_STREAM;
        }

        if ((ret = FUNC2(pdf->catalog, "Metadata", xmp)) != HPDF_OK) {
          return ret;
        }

        return FUNC6(pdf);
    }

    return HPDF_OK;
}