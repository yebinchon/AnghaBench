#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  avl ;
struct TYPE_6__ {int /*<<< orphan*/  rrdset_root_index; } ;
struct TYPE_5__ {int /*<<< orphan*/  id; scalar_t__ hash; } ;
typedef  TYPE_1__ RRDSET ;
typedef  TYPE_2__ RRDHOST ;

/* Variables and functions */
 int /*<<< orphan*/  RRD_ID_LENGTH_MAX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static RRDSET *FUNC3(RRDHOST *host, const char *id, uint32_t hash) {
    RRDSET tmp;
    FUNC2(tmp.id, id, RRD_ID_LENGTH_MAX);
    tmp.hash = (hash)?hash:FUNC1(tmp.id);

    return (RRDSET *)FUNC0(&(host->rrdset_root_index), (avl *) &tmp);
}