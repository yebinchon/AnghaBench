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
typedef  int UINT ;
struct TYPE_4__ {int /*<<< orphan*/ * palette; } ;
typedef  int /*<<< orphan*/  IWICBitmapDecoder ;
typedef  int /*<<< orphan*/  IStream ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  scalar_t__ GpStatus ;
typedef  TYPE_1__ GpImage ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GUID_ContainerFormatGif ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ Ok ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__**) ; 
 int /*<<< orphan*/  gif_metadata_reader ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 

__attribute__((used)) static GpStatus FUNC7(IStream* stream, GpImage **image)
{
    IWICBitmapDecoder *decoder;
    UINT frame_count;
    GpStatus status;
    HRESULT hr;

    status = FUNC6(stream, &GUID_ContainerFormatGif, &decoder);
    if(status != Ok)
        return status;

    hr = FUNC1(decoder, &frame_count);
    if(FUNC0(hr))
        return FUNC5(hr);

    status = FUNC3(decoder, frame_count > 1, 0, gif_metadata_reader, image);
    FUNC2(decoder);
    if(status != Ok)
        return status;

    if(frame_count > 1) {
        FUNC4((*image)->palette);
        (*image)->palette = NULL;
    }
    return Ok;
}