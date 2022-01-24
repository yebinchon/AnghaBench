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
typedef  int /*<<< orphan*/  uint8_t ;
struct mp_image {struct image_flags* priv; } ;
struct image_flags {int referenced; int pool_alive; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct mp_image*) ; 

__attribute__((used)) static void FUNC4(void *opaque, uint8_t *data)
{
    struct mp_image *img = opaque;
    struct image_flags *it = img->priv;
    bool alive;
    FUNC1();
    FUNC0(it->referenced);
    it->referenced = false;
    alive = it->pool_alive;
    FUNC2();
    if (!alive)
        FUNC3(img);
}