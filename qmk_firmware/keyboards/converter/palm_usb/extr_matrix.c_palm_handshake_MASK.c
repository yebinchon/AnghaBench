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
 int FUNC0 () ; 

uint8_t FUNC1(void) {
    // assumes something has seen DCD go high, we've toggled RTS 
    // and we now need to verify handshake. 
    // listen for up to 4 packets before giving up. 
    // usually I get the sequence FF FA FD
    static uint8_t codeA=0;
 
    for (uint8_t i=0; i < 5; i++) {
        codeA=FUNC0();
        if ( 0xFA == codeA) {
            if( 0xFD == FUNC0()) {
                return 1;
            }
        }
    }
    return 0;
}