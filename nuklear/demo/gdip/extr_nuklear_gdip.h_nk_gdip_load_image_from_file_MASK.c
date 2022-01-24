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
struct nk_image {int dummy; } ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  GpImage ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ **) ; 
 struct nk_image FUNC1 (int /*<<< orphan*/ *) ; 
 struct nk_image FUNC2 (int /*<<< orphan*/ ) ; 

struct nk_image
FUNC3(const WCHAR *filename)
{
    GpImage *image;
    if (FUNC0(filename, &image))
        return FUNC2(0);
    return FUNC1(image);
}