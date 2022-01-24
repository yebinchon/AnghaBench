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
struct mp_archive_volume {int dummy; } ;
struct archive {int dummy; } ;

/* Variables and functions */
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  FUNC0 (struct mp_archive_volume*) ; 
 int /*<<< orphan*/  FUNC1 (struct mp_archive_volume*) ; 

__attribute__((used)) static int FUNC2(struct archive *arch, void *priv)
{
    struct mp_archive_volume *vol = priv;
    FUNC1(vol);
    FUNC0(vol);
    return ARCHIVE_OK;
}