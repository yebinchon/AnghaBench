#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  error; } ;
typedef  TYPE_1__* HPDF_Stream ;
typedef  scalar_t__ HPDF_STATUS ;
typedef  int /*<<< orphan*/  HPDF_BYTE ;

/* Variables and functions */
 scalar_t__ HPDF_INVALID_PARAMETER ; 
 scalar_t__ HPDF_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/  const*,int) ; 
 int FUNC2 (char const*) ; 

HPDF_STATUS FUNC3(HPDF_Stream stream, const char *pDate)
{
    HPDF_STATUS ret;

    if(pDate==NULL) return HPDF_INVALID_PARAMETER;
    if(FUNC2(pDate)<16) return HPDF_INVALID_PARAMETER;
    if(pDate[0]!='D'||
        pDate[1]!=':') return HPDF_INVALID_PARAMETER;
    pDate+=2;
    /* Copy YYYY */
    ret = FUNC1(stream, (const HPDF_BYTE*)pDate, 4);
    if (ret != HPDF_OK)
        return ret;
    pDate+=4;
    /* Write -MM */
    ret = FUNC1(stream, (const HPDF_BYTE*)"-", 1);
    if (ret != HPDF_OK)
        return ret;
    ret = FUNC1(stream, (const HPDF_BYTE*)pDate, 2);
    if (ret != HPDF_OK)
        return ret;
    pDate+=2;
    /* Write -DD */
    ret = FUNC1(stream, (const HPDF_BYTE*)"-", 1);
    if (ret != HPDF_OK)
        return ret;
    ret = FUNC1(stream, (const HPDF_BYTE*)pDate, 2);
    if (ret != HPDF_OK)
        return ret;
    pDate+=2;
    /* Write THH */
    ret = FUNC1(stream, (const HPDF_BYTE*)"T", 1);
    if (ret != HPDF_OK)
        return ret;
    ret = FUNC1(stream, (const HPDF_BYTE*)pDate, 2);
    if (ret != HPDF_OK)
        return ret;
    pDate+=2;
    /* Write :mm */
    ret = FUNC1(stream, (const HPDF_BYTE*)":", 1);
    if (ret != HPDF_OK)
        return ret;
    ret = FUNC1(stream, (const HPDF_BYTE*)pDate, 2);
    if (ret != HPDF_OK)
        return ret;
    pDate+=2;
    /* Write :SS */
    ret = FUNC1(stream, (const HPDF_BYTE*)":", 1);
    if (ret != HPDF_OK)
        return ret;
    ret = FUNC1(stream, (const HPDF_BYTE*)pDate, 2);
    if (ret != HPDF_OK)
        return ret;
    pDate+=2;
    /* Write +... */
    if(pDate[0]==0) {
        ret = FUNC1(stream, (const HPDF_BYTE*)"Z", 1);
        return ret;
    }
    if(pDate[0]=='+'||pDate[0]=='-') {
        ret = FUNC1(stream, (const HPDF_BYTE*)pDate, 3);
        if (ret != HPDF_OK)
            return ret;
        pDate+=4;
        ret = FUNC1(stream, (const HPDF_BYTE*)":", 1);
        if (ret != HPDF_OK)
            return ret;
        ret = FUNC1(stream, (const HPDF_BYTE*)pDate, 2);
        if (ret != HPDF_OK)
            return ret;
        return ret;
    }
    return FUNC0 (stream->error, HPDF_INVALID_PARAMETER, 0);
}