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
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 int /*<<< orphan*/  CDM_CFG ; 
 int /*<<< orphan*/ * FUNC0 (int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC5(int pp32, u32 *code_src, unsigned int code_dword_len, u32 *data_src, unsigned int data_dword_len)
{
    unsigned int clr, set;
    volatile u32 *dest;

    if ( code_src == 0 || ((unsigned long)code_src & 0x03) != 0
        || data_src == 0 || ((unsigned long)data_src & 0x03) != 0 )
        return -1;

    clr = pp32 ? 0xF0 : 0x0F;
    if ( code_dword_len <= FUNC1(0) )
        set = pp32 ? (3 << 6): (2 << 2);
    else
        set = 0x00;
    FUNC4(clr, set, CDM_CFG);

    /*  copy code   */
    dest = FUNC0(pp32, 0);
    while ( code_dword_len-- > 0 )
        FUNC3(*code_src++, dest++);

    /*  copy data   */
    dest = FUNC2(pp32, 0);
    while ( data_dword_len-- > 0 )
        FUNC3(*data_src++, dest++);

    return 0;
}