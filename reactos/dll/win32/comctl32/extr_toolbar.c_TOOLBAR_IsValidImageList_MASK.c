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
typedef  int /*<<< orphan*/  TOOLBAR_INFO ;
typedef  int /*<<< orphan*/  INT ;
typedef  int /*<<< orphan*/ * HIMAGELIST ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline BOOL
FUNC3(const TOOLBAR_INFO *infoPtr, INT index)
{
    HIMAGELIST himl = FUNC0(infoPtr, FUNC1(infoPtr, index));
    return (himl != NULL) && (FUNC2(himl) > 0);
}