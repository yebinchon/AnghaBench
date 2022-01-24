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
typedef  int uint8_t ;

/* Variables and functions */
 int PINB ; 
 int PIND ; 
 int PINE ; 

__attribute__((used)) static uint8_t FUNC0(uint8_t col) {
  if (col == 16) {
    return PINE&(1<<2) ? 0 : (1<<0);
  } else {
      return (PIND&(1<<0) ? (1<<0) : 0) |
             (PIND&(1<<1) ? (1<<1) : 0) |
             (PIND&(1<<2) ? (1<<2) : 0) |
             (PIND&(1<<3) ? (1<<3) : 0) |
             (PIND&(1<<5) ? (1<<4) : 0) |
             (PINB&(1<<7) ? (1<<5) : 0);
    }
}