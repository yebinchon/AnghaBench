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
typedef  char WCHAR ;
typedef  char* LPWSTR ;
typedef  char* LPCWSTR ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int FUNC1 (char*) ; 
 int FUNC2 (char*) ; 

__attribute__((used)) static void FUNC3( LPWSTR buffer, LPCWSTR value, int len,
                               BOOL strip_quote )
{
    WCHAR quote = '\0';

    if(!buffer) return;

    if (strip_quote && ((*value == '\'') || (*value == '\"')))
    {
        if (value[1] && (value[FUNC2(value)-1] == *value)) quote = *value++;
    }

    FUNC0( buffer, value, len );
    if (quote && (len >= FUNC1(value))) buffer[FUNC2(buffer)-1] = '\0';
}