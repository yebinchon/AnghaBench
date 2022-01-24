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
typedef  size_t HPDF_UINT ;
typedef  int /*<<< orphan*/  HPDF_Stream ;
typedef  int /*<<< orphan*/  HPDF_STATUS ;
typedef  char HPDF_BYTE ;

/* Variables and functions */
 int HPDF_LIMIT_MAX_NAME_LEN ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  HPDF_OK ; 
 int /*<<< orphan*/  HPDF_SEEK_SET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static HPDF_STATUS
FUNC3  (HPDF_Stream   stream,
                  HPDF_UINT     offset,
                  HPDF_UINT     len,
                  char    *buf)
{
    HPDF_BYTE tmp[HPDF_LIMIT_MAX_NAME_LEN * 2 + 1];
    HPDF_UINT i = 0;
    HPDF_UINT j = 0;
    HPDF_STATUS ret;

    FUNC0 (buf, 0, HPDF_LIMIT_MAX_NAME_LEN + 1);

    if ((ret = FUNC2 (stream, offset, HPDF_SEEK_SET)) !=
            HPDF_OK)
        return ret;

    if ((ret = FUNC1 (stream, tmp, &len))
             != HPDF_OK)
        return ret;

    while (i < len) {
        i++;
        buf[j] = tmp[i];
        j++;
        i++;
    }

    return HPDF_OK;
}