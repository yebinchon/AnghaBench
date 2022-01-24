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
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/  IWICBitmapFrameDecode ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  GUID_MetadataFormatIMD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static HRESULT FUNC2(IWICBitmapFrameDecode *frame,
        UINT *left, UINT *top, UINT *width, UINT *height)
{
    static const WCHAR leftW[] = {'L','e','f','t',0};
    static const WCHAR topW[] = {'T','o','p',0};

    *left = FUNC1(frame, &GUID_MetadataFormatIMD, leftW);
    *top = FUNC1(frame, &GUID_MetadataFormatIMD, topW);

    return FUNC0(frame, width, height);
}