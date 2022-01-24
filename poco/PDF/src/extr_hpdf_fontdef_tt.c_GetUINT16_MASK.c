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
typedef  scalar_t__ HPDF_UINT16 ;
typedef  int HPDF_UINT ;
typedef  int /*<<< orphan*/  HPDF_Stream ;
typedef  scalar_t__ HPDF_STATUS ;
typedef  int /*<<< orphan*/  HPDF_BYTE ;

/* Variables and functions */
 scalar_t__ HPDF_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 

__attribute__((used)) static HPDF_STATUS
FUNC2 (HPDF_Stream         stream,
           HPDF_UINT16         *value)
{
    HPDF_STATUS ret;
    HPDF_UINT size = sizeof (HPDF_UINT16);

    ret = FUNC0 (stream, (HPDF_BYTE *)value, &size);
    if (ret != HPDF_OK) {
        *value = 0;
        return ret;
    }

    FUNC1 (value);

    return HPDF_OK;
}