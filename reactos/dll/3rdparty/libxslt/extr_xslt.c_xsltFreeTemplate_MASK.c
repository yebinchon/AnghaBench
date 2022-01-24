#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* xsltTemplatePtr ;
typedef  int /*<<< orphan*/  xsltTemplate ;
struct TYPE_5__ {struct TYPE_5__* templCountTab; struct TYPE_5__* templCalledTab; struct TYPE_5__* inheritedNs; struct TYPE_5__* match; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC2(xsltTemplatePtr template) {
    if (template == NULL)
	return;
    if (template->match) FUNC1(template->match);
/*
*   NOTE: @name and @nameURI are put into the string dict now.
*   if (template->name) xmlFree(template->name);
*   if (template->nameURI) xmlFree(template->nameURI);
*/
/*
    if (template->mode) xmlFree(template->mode);
    if (template->modeURI) xmlFree(template->modeURI);
 */
    if (template->inheritedNs) FUNC1(template->inheritedNs);

    /* free profiling data */
    if (template->templCalledTab) FUNC1(template->templCalledTab);
    if (template->templCountTab) FUNC1(template->templCountTab);

    FUNC0(template, -1, sizeof(xsltTemplate));
    FUNC1(template);
}