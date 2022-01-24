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
typedef  int matrix_row_t ;

/* Variables and functions */
 int /*<<< orphan*/  PB0 ; 
 int /*<<< orphan*/  PB6 ; 
 int /*<<< orphan*/  PB7 ; 
 int /*<<< orphan*/  PC7 ; 
 int /*<<< orphan*/  PD0 ; 
 int /*<<< orphan*/  PD1 ; 
 int /*<<< orphan*/  PD5 ; 
 int /*<<< orphan*/  PD6 ; 
 int /*<<< orphan*/  PD7 ; 
 int /*<<< orphan*/  PE6 ; 
 int /*<<< orphan*/  PF0 ; 
 int /*<<< orphan*/  PF1 ; 
 int /*<<< orphan*/  PF4 ; 
 int /*<<< orphan*/  PF5 ; 
 int /*<<< orphan*/  PF6 ; 
 int /*<<< orphan*/  PF7 ; 
 int PINB ; 
 int PINC ; 
 int PIND ; 
 int PINE ; 
 int PINF ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static matrix_row_t FUNC1(void)
{

    return (PINF&FUNC0(PF7) ? 0 : (1<<0)) |
           (PINF&FUNC0(PF6) ? 0 : (1<<1)) |
           (PINF&FUNC0(PF5) ? 0 : (1<<2)) |
           (PINF&FUNC0(PF4) ? 0 : (1<<3)) |
           (PINF&FUNC0(PF1) ? 0 : (1<<4)) |
           (PINF&FUNC0(PF0) ? 0 : (1<<5)) |
           (PINE&FUNC0(PE6) ? 0 : (1<<6)) |
           (PIND&FUNC0(PD7) ? 0 : (1<<7)) |
           (PIND&FUNC0(PD6) ? 0 : (1<<8)) |
           (PIND&FUNC0(PD5) ? 0 : (1<<9)) |
           (PIND&FUNC0(PD1) ? 0 : (1<<10)) |
           (PIND&FUNC0(PD0) ? 0 : (1<<11)) |
           (PINB&FUNC0(PB7) ? 0 : (1<<12)) |
           (PINB&FUNC0(PB6) ? 0 : (1<<13)) |
           (PINB&FUNC0(PB0) ? 0 : (1<<14)) |
           (PINC&FUNC0(PC7) ? 0 : (1<<15));
}