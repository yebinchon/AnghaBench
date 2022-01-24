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
typedef  int /*<<< orphan*/  ULONG ;
typedef  scalar_t__ UINT ;
typedef  int INT ;
typedef  int /*<<< orphan*/ * HIMAGELIST ;
typedef  int /*<<< orphan*/ * HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int ILC_COLOR32 ; 
 int ILC_MASK ; 
 int /*<<< orphan*/  IMAGE_BITMAP ; 
 int /*<<< orphan*/  IMAGE_ICON ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (scalar_t__,scalar_t__,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LR_LOADTRANSPARENT ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  hInstance ; 

HIMAGELIST
FUNC8(UINT StartResource,
              UINT EndResource,
              UINT Width,
              UINT Height,
              ULONG type)
{
    HANDLE hImage;
    HIMAGELIST himl;
    UINT i;
    INT ret;

    /* Create the toolbar icon image list */
    himl = FUNC3(Width,
                            Height,
                            ILC_MASK | ILC_COLOR32,
                            EndResource - StartResource,
                            0);
    if (himl == NULL)
        return NULL;

    ret = 0;
    for (i = StartResource; i <= EndResource && ret != -1; i++)
    {
        hImage = FUNC5(hInstance,
                            FUNC6(i),
                            type,
                            Width,
                            Height,
                            LR_LOADTRANSPARENT);
        if (hImage == NULL)
        {
            FUNC4(himl);
            himl = NULL;
            break;
        }

        if (type == IMAGE_BITMAP)
        {
            ret = FUNC2(himl,
                                      hImage,
                                      FUNC7(255, 0, 128));
        }
        else if (type == IMAGE_ICON)
        {
            ret = FUNC1(himl,
                                    hImage);
        }

        FUNC0(hImage);
    }

    if (ret == -1)
    {
        FUNC4(himl);
        himl = NULL;
    }

    return himl;
}