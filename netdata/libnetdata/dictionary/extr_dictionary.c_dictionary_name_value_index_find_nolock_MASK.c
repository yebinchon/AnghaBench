#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  avl ;
struct TYPE_7__ {int /*<<< orphan*/  values_index; } ;
struct TYPE_6__ {char* name; scalar_t__ hash; } ;
typedef  TYPE_1__ NAME_VALUE ;
typedef  TYPE_2__ DICTIONARY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char const*) ; 

__attribute__((used)) static inline NAME_VALUE *FUNC3(DICTIONARY *dict, const char *name, uint32_t hash) {
    NAME_VALUE tmp;
    tmp.hash = (hash)?hash:FUNC2(name);
    tmp.name = (char *)name;

    FUNC0(dict);
    return (NAME_VALUE *)FUNC1(&(dict->values_index), (avl *) &tmp);
}