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
struct TYPE_5__ {TYPE_2__* cue_head; TYPE_2__* style_head; TYPE_2__* region_head; } ;
typedef  TYPE_1__ vtt_t ;
struct TYPE_6__ {char* cue_id; char* cue_settings; scalar_t__ duration; scalar_t__ timestamp; struct TYPE_6__* next; } ;
typedef  TYPE_2__ vtt_block_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 char* FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int*,int*,int*,int*) ; 

__attribute__((used)) static void FUNC3(vtt_t* vtt)
{
    vtt_block_t* block;
    FUNC0("WEBVTT\r\n\r\n");

    block = vtt->region_head;
    while (block != NULL) {
        FUNC0("REGION\r\n%s\r\n", FUNC1(block));
        block = block->next;
    }

    block = vtt->style_head;
    while (block != NULL) {
        FUNC0("STYLE\r\n%s\r\n", FUNC1(block));
        block = block->next;
    }

    block = vtt->cue_head;
    while (block != NULL) {
        int hh1, hh2, mm1, mm2, ss1, ss2, ms1, ms2;
        FUNC2(block->timestamp, &hh1, &mm1, &ss1, &ms1);
        FUNC2(block->timestamp + block->duration, &hh2, &mm2, &ss2, &ms2);

        if (block->cue_id != NULL) {
            FUNC0("%s\n", block->cue_id);
        }

        FUNC0("%02d:%02d:%02d.%03d --> %02d:%02d:%02d.%03d",
            hh1, mm1, ss1, ms1, hh2, mm2, ss2, ms2);

        if (block->cue_settings != NULL) {
            FUNC0(" %s", block->cue_settings);
        }

        FUNC0("\r\n%s\r\n", FUNC1(block));
    }
}