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
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ **) ; 

__attribute__((used)) static
void FUNC2(const BYTE *str, BYTE **ptr, DWORD len, DWORD width,
                      BOOL prepend_len)
{
    /*TRACE("called %ux%u\n",(unsigned int)len,(unsigned int)width);*/

    if (prepend_len)
    {
        FUNC1(len,ptr);
    }
    FUNC0(*ptr,str,len*width);
    *ptr+=len*width;
}