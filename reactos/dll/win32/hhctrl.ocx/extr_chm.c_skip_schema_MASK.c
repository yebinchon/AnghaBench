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
typedef  scalar_t__ LPCWSTR ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,scalar_t__,scalar_t__) ; 

LPCWSTR FUNC2(LPCWSTR url)
{
    static const WCHAR its_schema[] = {'i','t','s',':'};
    static const WCHAR msits_schema[] = {'m','s','-','i','t','s',':'};
    static const WCHAR mk_schema[] = {'m','k',':','@','M','S','I','T','S','t','o','r','e',':'};

    if(!FUNC1(its_schema, url, FUNC0(its_schema)))
        return url + FUNC0(its_schema);
    if(!FUNC1(msits_schema, url, FUNC0(msits_schema)))
        return url + FUNC0(msits_schema);
    if(!FUNC1(mk_schema, url, FUNC0(mk_schema)))
        return url + FUNC0(mk_schema);

    return url;
}