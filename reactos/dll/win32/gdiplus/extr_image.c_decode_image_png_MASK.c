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
typedef  int /*<<< orphan*/  IWICBitmapFrameDecode ;
typedef  int /*<<< orphan*/  IWICBitmapDecoder ;
typedef  int /*<<< orphan*/  IStream ;
typedef  scalar_t__ HRESULT ;
typedef  scalar_t__ GpStatus ;
typedef  int /*<<< orphan*/  GpImage ;
typedef  int /*<<< orphan*/  GUID ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  GUID_ContainerFormatPng ; 
 int /*<<< orphan*/  GUID_WICPixelFormat1bppIndexed ; 
 int /*<<< orphan*/  GUID_WICPixelFormat24bppBGR ; 
 int /*<<< orphan*/  GUID_WICPixelFormat2bppIndexed ; 
 int /*<<< orphan*/  GUID_WICPixelFormat4bppIndexed ; 
 int /*<<< orphan*/  GUID_WICPixelFormat8bppGray ; 
 int /*<<< orphan*/  GUID_WICPixelFormat8bppIndexed ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ Ok ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  png_metadata_reader ; 

__attribute__((used)) static GpStatus FUNC9(IStream* stream, GpImage **image)
{
    IWICBitmapDecoder *decoder;
    IWICBitmapFrameDecode *frame;
    GpStatus status;
    HRESULT hr;
    GUID format;
    BOOL force_conversion = FALSE;

    status = FUNC8(stream, &GUID_ContainerFormatPng, &decoder);
    if (status != Ok)
        return status;

    hr = FUNC0(decoder, 0, &frame);
    if (hr == S_OK)
    {
        hr = FUNC2(frame, &format);
        if (hr == S_OK)
        {
            if (FUNC4(&format, &GUID_WICPixelFormat8bppGray))
                force_conversion = TRUE;
            else if ((FUNC4(&format, &GUID_WICPixelFormat8bppIndexed) ||
                      FUNC4(&format, &GUID_WICPixelFormat4bppIndexed) ||
                      FUNC4(&format, &GUID_WICPixelFormat2bppIndexed) ||
                      FUNC4(&format, &GUID_WICPixelFormat1bppIndexed) ||
                      FUNC4(&format, &GUID_WICPixelFormat24bppBGR)) &&
                     FUNC6(stream))
                force_conversion = TRUE;

            status = FUNC5(decoder, force_conversion, 0, png_metadata_reader, image);
        }
        else
            status = FUNC7(hr);

        FUNC3(frame);
    }
    else
        status = FUNC7(hr);

    FUNC1(decoder);
    return status;
}