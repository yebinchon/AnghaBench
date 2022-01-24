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
typedef  int /*<<< orphan*/  metadata_reader_func ;
typedef  int /*<<< orphan*/  REFGUID ;
typedef  int /*<<< orphan*/  IWICBitmapDecoder ;
typedef  int /*<<< orphan*/  IStream ;
typedef  scalar_t__ GpStatus ;
typedef  int /*<<< orphan*/  GpImage ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ Ok ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 

__attribute__((used)) static GpStatus FUNC3(IStream *stream, REFGUID container,
        metadata_reader_func metadata_reader, GpImage **image)
{
    IWICBitmapDecoder *decoder;
    GpStatus status;

    status = FUNC2(stream, container, &decoder);
    if(status != Ok)
        return status;

    status = FUNC1(decoder, FALSE, 0, metadata_reader, image);
    FUNC0(decoder);
    return status;
}