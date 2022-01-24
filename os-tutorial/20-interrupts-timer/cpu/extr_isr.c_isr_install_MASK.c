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
 scalar_t__ irq0 ; 
 scalar_t__ irq1 ; 
 scalar_t__ irq10 ; 
 scalar_t__ irq11 ; 
 scalar_t__ irq12 ; 
 scalar_t__ irq13 ; 
 scalar_t__ irq14 ; 
 scalar_t__ irq15 ; 
 scalar_t__ irq2 ; 
 scalar_t__ irq3 ; 
 scalar_t__ irq4 ; 
 scalar_t__ irq5 ; 
 scalar_t__ irq6 ; 
 scalar_t__ irq7 ; 
 scalar_t__ irq8 ; 
 scalar_t__ irq9 ; 
 scalar_t__ isr0 ; 
 scalar_t__ isr1 ; 
 scalar_t__ isr10 ; 
 scalar_t__ isr11 ; 
 scalar_t__ isr12 ; 
 scalar_t__ isr13 ; 
 scalar_t__ isr14 ; 
 scalar_t__ isr15 ; 
 scalar_t__ isr16 ; 
 scalar_t__ isr17 ; 
 scalar_t__ isr18 ; 
 scalar_t__ isr19 ; 
 scalar_t__ isr2 ; 
 scalar_t__ isr20 ; 
 scalar_t__ isr21 ; 
 scalar_t__ isr22 ; 
 scalar_t__ isr23 ; 
 scalar_t__ isr24 ; 
 scalar_t__ isr25 ; 
 scalar_t__ isr26 ; 
 scalar_t__ isr27 ; 
 scalar_t__ isr28 ; 
 scalar_t__ isr29 ; 
 scalar_t__ isr3 ; 
 scalar_t__ isr30 ; 
 scalar_t__ isr31 ; 
 scalar_t__ isr4 ; 
 scalar_t__ isr5 ; 
 scalar_t__ isr6 ; 
 scalar_t__ isr7 ; 
 scalar_t__ isr8 ; 
 scalar_t__ isr9 ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

void FUNC3() {
    FUNC2(0, (u32)isr0);
    FUNC2(1, (u32)isr1);
    FUNC2(2, (u32)isr2);
    FUNC2(3, (u32)isr3);
    FUNC2(4, (u32)isr4);
    FUNC2(5, (u32)isr5);
    FUNC2(6, (u32)isr6);
    FUNC2(7, (u32)isr7);
    FUNC2(8, (u32)isr8);
    FUNC2(9, (u32)isr9);
    FUNC2(10, (u32)isr10);
    FUNC2(11, (u32)isr11);
    FUNC2(12, (u32)isr12);
    FUNC2(13, (u32)isr13);
    FUNC2(14, (u32)isr14);
    FUNC2(15, (u32)isr15);
    FUNC2(16, (u32)isr16);
    FUNC2(17, (u32)isr17);
    FUNC2(18, (u32)isr18);
    FUNC2(19, (u32)isr19);
    FUNC2(20, (u32)isr20);
    FUNC2(21, (u32)isr21);
    FUNC2(22, (u32)isr22);
    FUNC2(23, (u32)isr23);
    FUNC2(24, (u32)isr24);
    FUNC2(25, (u32)isr25);
    FUNC2(26, (u32)isr26);
    FUNC2(27, (u32)isr27);
    FUNC2(28, (u32)isr28);
    FUNC2(29, (u32)isr29);
    FUNC2(30, (u32)isr30);
    FUNC2(31, (u32)isr31);

    // Remap the PIC
    FUNC0(0x20, 0x11);
    FUNC0(0xA0, 0x11);
    FUNC0(0x21, 0x20);
    FUNC0(0xA1, 0x28);
    FUNC0(0x21, 0x04);
    FUNC0(0xA1, 0x02);
    FUNC0(0x21, 0x01);
    FUNC0(0xA1, 0x01);
    FUNC0(0x21, 0x0);
    FUNC0(0xA1, 0x0); 

    // Install the IRQs
    FUNC2(32, (u32)irq0);
    FUNC2(33, (u32)irq1);
    FUNC2(34, (u32)irq2);
    FUNC2(35, (u32)irq3);
    FUNC2(36, (u32)irq4);
    FUNC2(37, (u32)irq5);
    FUNC2(38, (u32)irq6);
    FUNC2(39, (u32)irq7);
    FUNC2(40, (u32)irq8);
    FUNC2(41, (u32)irq9);
    FUNC2(42, (u32)irq10);
    FUNC2(43, (u32)irq11);
    FUNC2(44, (u32)irq12);
    FUNC2(45, (u32)irq13);
    FUNC2(46, (u32)irq14);
    FUNC2(47, (u32)irq15);

    FUNC1(); // Load with ASM
}