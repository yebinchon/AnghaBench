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
typedef  int /*<<< orphan*/  uint64_t ;
struct drm_object {int /*<<< orphan*/  fd; } ;
typedef  int /*<<< orphan*/ * drmModePropertyBlobPtr ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_object*,char*,int /*<<< orphan*/ *) ; 

drmModePropertyBlobPtr FUNC2(struct drm_object *object, char *name)
{
   uint64_t blob_id;

   if (!FUNC1(object, name, &blob_id)) {
       return FUNC0(object->fd, blob_id);
   }

   return NULL;
}