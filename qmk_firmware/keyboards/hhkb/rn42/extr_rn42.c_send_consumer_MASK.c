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
typedef  int uint16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(uint16_t data)
{
    uint16_t bits = FUNC1(data);
    FUNC0(0xFD);  // Raw report mode
    FUNC0(3);     // length
    FUNC0(3);     // descriptor type
    FUNC0(bits&0xFF);
    FUNC0((bits>>8)&0xFF);
}