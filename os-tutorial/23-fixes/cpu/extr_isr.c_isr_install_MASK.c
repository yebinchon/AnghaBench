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
typedef  int /*<<< orphan*/  uint32_t ;

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
    FUNC2(0, (uint32_t)isr0);
    FUNC2(1, (uint32_t)isr1);
    FUNC2(2, (uint32_t)isr2);
    FUNC2(3, (uint32_t)isr3);
    FUNC2(4, (uint32_t)isr4);
    FUNC2(5, (uint32_t)isr5);
    FUNC2(6, (uint32_t)isr6);
    FUNC2(7, (uint32_t)isr7);
    FUNC2(8, (uint32_t)isr8);
    FUNC2(9, (uint32_t)isr9);
    FUNC2(10, (uint32_t)isr10);
    FUNC2(11, (uint32_t)isr11);
    FUNC2(12, (uint32_t)isr12);
    FUNC2(13, (uint32_t)isr13);
    FUNC2(14, (uint32_t)isr14);
    FUNC2(15, (uint32_t)isr15);
    FUNC2(16, (uint32_t)isr16);
    FUNC2(17, (uint32_t)isr17);
    FUNC2(18, (uint32_t)isr18);
    FUNC2(19, (uint32_t)isr19);
    FUNC2(20, (uint32_t)isr20);
    FUNC2(21, (uint32_t)isr21);
    FUNC2(22, (uint32_t)isr22);
    FUNC2(23, (uint32_t)isr23);
    FUNC2(24, (uint32_t)isr24);
    FUNC2(25, (uint32_t)isr25);
    FUNC2(26, (uint32_t)isr26);
    FUNC2(27, (uint32_t)isr27);
    FUNC2(28, (uint32_t)isr28);
    FUNC2(29, (uint32_t)isr29);
    FUNC2(30, (uint32_t)isr30);
    FUNC2(31, (uint32_t)isr31);

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
    FUNC2(32, (uint32_t)irq0);
    FUNC2(33, (uint32_t)irq1);
    FUNC2(34, (uint32_t)irq2);
    FUNC2(35, (uint32_t)irq3);
    FUNC2(36, (uint32_t)irq4);
    FUNC2(37, (uint32_t)irq5);
    FUNC2(38, (uint32_t)irq6);
    FUNC2(39, (uint32_t)irq7);
    FUNC2(40, (uint32_t)irq8);
    FUNC2(41, (uint32_t)irq9);
    FUNC2(42, (uint32_t)irq10);
    FUNC2(43, (uint32_t)irq11);
    FUNC2(44, (uint32_t)irq12);
    FUNC2(45, (uint32_t)irq13);
    FUNC2(46, (uint32_t)irq14);
    FUNC2(47, (uint32_t)irq15);

    FUNC1(); // Load with ASM
}