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
struct dds_header {int dummy; } ;
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  D3DFORMAT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__*,scalar_t__*) ; 
 scalar_t__ FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static UINT FUNC2(D3DFORMAT format, UINT width, UINT height, UINT depth,
    UINT miplevels, UINT faces)
{
    UINT i, file_size = 0;

    for (i = 0; i < miplevels; i++)
    {
        UINT pitch, size = 0;
        FUNC0(format, width, height, &pitch, &size);
        size *= depth;
        file_size += size;
        width = FUNC1(1, width / 2);
        height = FUNC1(1, height / 2);
        depth = FUNC1(1, depth / 2);
    }

    file_size *= faces;
    file_size += sizeof(struct dds_header);
    return file_size;
}