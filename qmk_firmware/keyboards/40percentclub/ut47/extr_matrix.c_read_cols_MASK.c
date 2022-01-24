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
 int PINB ; 
 int PIND ; 
 int PINE ; 
 int PINF ; 

__attribute__((used)) static matrix_row_t FUNC0(void)
{
    return (PIND&(1<<7) ? 0 : (1<<0)) |
           (PINE&(1<<6) ? 0 : (1<<1)) |
           (PINB&(1<<4) ? 0 : (1<<2)) |
           (PINB&(1<<5) ? 0 : (1<<3)) |
           (PINB&(1<<6) ? 0 : (1<<4)) |
           (PINB&(1<<2) ? 0 : (1<<5)) |
           (PINB&(1<<3) ? 0 : (1<<6)) |
           (PINB&(1<<1) ? 0 : (1<<7)) |
           (PINF&(1<<7) ? 0 : (1<<8)) |
           (PINF&(1<<6) ? 0 : (1<<9)) |
           (PINF&(1<<5) ? 0 : (1<<10)) |
           (PINF&(1<<4) ? 0 : (1<<11));
}