#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* xsltTransformContextPtr ;
typedef  void* xsltTemplatePtr ;
struct TYPE_3__ {int templMax; void** templTab; int templNr; void* templ; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  xmlGenericErrorContext ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (void**,int) ; 

__attribute__((used)) static int
FUNC3(xsltTransformContextPtr ctxt, xsltTemplatePtr value)
{
    if (ctxt->templMax == 0) {
        ctxt->templMax = 4;
        ctxt->templTab =
            (xsltTemplatePtr *) FUNC1(ctxt->templMax *
                                          sizeof(ctxt->templTab[0]));
        if (ctxt->templTab == NULL) {
            FUNC0(xmlGenericErrorContext, "malloc failed !\n");
            return (0);
        }
    }
    else if (ctxt->templNr >= ctxt->templMax) {
        ctxt->templMax *= 2;
        ctxt->templTab =
            (xsltTemplatePtr *) FUNC2(ctxt->templTab,
                                           ctxt->templMax *
                                           sizeof(ctxt->templTab[0]));
        if (ctxt->templTab == NULL) {
            FUNC0(xmlGenericErrorContext, "realloc failed !\n");
            return (0);
        }
    }
    ctxt->templTab[ctxt->templNr] = value;
    ctxt->templ = value;
    return (ctxt->templNr++);
}