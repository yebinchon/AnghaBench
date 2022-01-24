#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ duration; scalar_t__ timestamp; struct TYPE_5__* next; } ;
typedef  TYPE_1__ vtt_block_t ;
struct TYPE_6__ {TYPE_1__* cue_head; } ;
typedef  TYPE_2__ srt_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int,int,int,int,int,int,int,int,char*) ; 
 char* FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int*,int*,int*,int*) ; 

void FUNC3(srt_t* srt)
{
    int i;
    vtt_block_t* block;

    for (block = srt->cue_head, i = 1; block; block = block->next, ++i) {
        int hh1, hh2, mm1, mm2, ss1, ss2, ms1, ms2;
        FUNC2(block->timestamp, &hh1, &mm1, &ss1, &ms1);
        FUNC2(block->timestamp + block->duration, &hh2, &mm2, &ss2, &ms2);

        FUNC0("%02d\r\n%d:%02d:%02d,%03d --> %02d:%02d:%02d,%03d\r\n%s\r\n", i,
            hh1, mm1, ss1, ms1, hh2, mm2, ss2, ms2, FUNC1(block));
    }
}