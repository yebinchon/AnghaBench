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
typedef  int /*<<< orphan*/ * xmlDictPtr ;
typedef  char xmlChar ;

/* Variables and functions */
 char const* FUNC0 (int /*<<< orphan*/ *,char const*,int) ; 

const xmlChar *
FUNC1(xmlDictPtr dict, const xmlChar *name, const xmlChar **prefix) {
    int len = 0;
    const xmlChar *ret = NULL;

    *prefix = NULL;
    if ((name == NULL) || (dict == NULL)) return(NULL);
    if (name[0] == ':')
        return(FUNC0(dict, name, -1));
    while ((name[len] != 0) && (name[len] != ':')) len++;
    if (name[len] == 0) return(FUNC0(dict, name, -1));
    *prefix = FUNC0(dict, name, len);
    ret = FUNC0(dict, &name[len + 1], -1);
    return(ret);
}