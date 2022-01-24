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

/* Variables and functions */
 int V_ASN1_BMPSTRING ; 
 int V_ASN1_UTF8STRING ; 
 int V_ASN1_VISIBLESTRING ; 
 int FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*,char*,int) ; 

__attribute__((used)) static int FUNC2(const char *tagstr, unsigned int *tag_len)
{
    int len;

    *tag_len = 0;
    len = FUNC0(tagstr);

    if (len == -1)
        return V_ASN1_VISIBLESTRING;
    *tag_len = len;
    if (len == sizeof("UTF8") - 1 && FUNC1(tagstr, "UTF8", len) == 0)
        return V_ASN1_UTF8STRING;
    if (len == sizeof("UTF8String") - 1 && FUNC1(tagstr, "UTF8String", len) == 0)
        return V_ASN1_UTF8STRING;
    if (len == sizeof("BMP") - 1 && FUNC1(tagstr, "BMP", len) == 0)
        return V_ASN1_BMPSTRING;
    if (len == sizeof("BMPSTRING") - 1 && FUNC1(tagstr, "BMPSTRING", len) == 0)
        return V_ASN1_BMPSTRING;
    if (len == sizeof("VISIBLE") - 1 && FUNC1(tagstr, "VISIBLE", len) == 0)
        return V_ASN1_VISIBLESTRING;
    if (len == sizeof("VISIBLESTRING") - 1 && FUNC1(tagstr, "VISIBLESTRING", len) == 0)
        return V_ASN1_VISIBLESTRING;
    *tag_len = 0;
    return V_ASN1_VISIBLESTRING;
}