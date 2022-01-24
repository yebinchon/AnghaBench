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
typedef  int /*<<< orphan*/  zval ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,char*) ; 

__attribute__((used)) static int FUNC1( const char * pKey, int keyLen, const char * pValue, int valLen,
                         void * arg )
{
    FUNC0((zval *)arg, (char *)pKey, keyLen, (char *)pValue);
    return 1;
}