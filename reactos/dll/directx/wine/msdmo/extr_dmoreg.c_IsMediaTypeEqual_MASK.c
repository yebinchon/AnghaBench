#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  subtype; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ DMO_PARTIAL_MEDIATYPE ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  GUID_NULL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static BOOL FUNC1(const DMO_PARTIAL_MEDIATYPE* mt1, const DMO_PARTIAL_MEDIATYPE* mt2)
{

    return (FUNC0(&mt1->type, &mt2->type) ||
            FUNC0(&mt2->type, &GUID_NULL) ||
            FUNC0(&mt1->type, &GUID_NULL)) &&
            (FUNC0(&mt1->subtype, &mt2->subtype) ||
            FUNC0(&mt2->subtype, &GUID_NULL) ||
            FUNC0(&mt1->subtype, &GUID_NULL));
}