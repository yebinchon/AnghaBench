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
typedef  int /*<<< orphan*/  VOID ;
typedef  int ULONG ;
typedef  scalar_t__* PVOID ;
typedef  scalar_t__* PCHAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__* video_mem ; 

VOID FUNC2( PVOID Buffer ) {
    int i,j;
    ULONG w,h,d;
    PCHAR ChBuf = Buffer;
    int offset = 0;

    FUNC0( &w, &h, &d );

    for( i = 0; i < h; i++ ) {
    for( j = 0; j < w; j++ ) {
        offset = (j * 2) + (i * w * 2);
        if( ChBuf[offset] != video_mem[offset] ) {
        video_mem[offset] = ChBuf[offset];
        FUNC1(ChBuf[offset],0,j+1,i+1);
        }
    }
    }
}