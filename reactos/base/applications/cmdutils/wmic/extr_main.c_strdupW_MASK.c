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
typedef  int /*<<< orphan*/  WCHAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int FUNC3 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static inline WCHAR *FUNC4( const WCHAR *src )
{
    WCHAR *dst;
    if (!src) return NULL;
    if (!(dst = FUNC1( FUNC0(), 0, (FUNC3( src ) + 1) * sizeof(WCHAR) ))) return NULL;
    FUNC2( dst, src );
    return dst;
}