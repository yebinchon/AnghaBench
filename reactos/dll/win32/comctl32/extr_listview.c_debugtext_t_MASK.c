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
typedef  scalar_t__ LPCWSTR ;
typedef  char* LPCSTR ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ LPSTR_TEXTCALLBACKW ; 
 char* FUNC0 (char*) ; 
 char* FUNC1 (scalar_t__) ; 

__attribute__((used)) static inline LPCSTR FUNC2(LPCWSTR text, BOOL isW)
{
    if (text == LPSTR_TEXTCALLBACKW) return "(callback)";
    return isW ? FUNC1(text) : FUNC0((LPCSTR)text);
}