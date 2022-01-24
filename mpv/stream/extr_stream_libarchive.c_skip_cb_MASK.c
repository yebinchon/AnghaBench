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
struct mp_archive_volume {int /*<<< orphan*/  src; } ;
struct archive {int dummy; } ;
typedef  int int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mp_archive_volume*) ; 

__attribute__((used)) static int64_t FUNC3(struct archive *arch, void *priv, int64_t request)
{
    struct mp_archive_volume *vol = priv;
    if (!FUNC2(vol))
        return -1;
    int64_t old = FUNC1(vol->src);
    FUNC0(vol->src, request);
    return FUNC1(vol->src) - old;
}