#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mp_archive_volume {TYPE_1__* mpa; int /*<<< orphan*/  src; } ;
struct archive {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {void* buffer; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mp_archive_volume*) ; 

__attribute__((used)) static ssize_t FUNC3(struct archive *arch, void *priv, const void **buffer)
{
    struct mp_archive_volume *vol = priv;
    if (!FUNC2(vol))
        return -1;
    int res = FUNC1(vol->src, vol->mpa->buffer,
                                  sizeof(vol->mpa->buffer));
    *buffer = vol->mpa->buffer;
    return FUNC0(res, 0);
}