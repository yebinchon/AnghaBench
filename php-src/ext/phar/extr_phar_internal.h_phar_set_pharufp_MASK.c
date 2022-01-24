#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  php_stream ;
struct TYPE_4__ {size_t phar_pos; int /*<<< orphan*/ * ufp; int /*<<< orphan*/  is_persistent; } ;
typedef  TYPE_1__ phar_archive_data ;
struct TYPE_5__ {int /*<<< orphan*/ * ufp; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cached_fp ; 

__attribute__((used)) static inline void FUNC1(phar_archive_data *phar, php_stream *fp)
{
	if (!phar->is_persistent) {
		phar->ufp =  fp;
		return;
	}

	FUNC0(cached_fp)[phar->phar_pos].ufp = fp;
}