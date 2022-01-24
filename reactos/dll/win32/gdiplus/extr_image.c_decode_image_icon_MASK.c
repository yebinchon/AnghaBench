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
typedef  int /*<<< orphan*/  IStream ;
typedef  int /*<<< orphan*/  GpStatus ;
typedef  int /*<<< orphan*/  GpImage ;

/* Variables and functions */
 int /*<<< orphan*/  GUID_ContainerFormatIco ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 

__attribute__((used)) static GpStatus FUNC1(IStream* stream, GpImage **image)
{
    return FUNC0(stream, &GUID_ContainerFormatIco, NULL, image);
}