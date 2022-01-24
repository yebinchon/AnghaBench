#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {void* attr_max; void* file_max; void* name_max; void* block_count; void* block_size; void* version; } ;
typedef  TYPE_1__ lfs2_superblock_t ;

/* Variables and functions */
 void* FUNC0 (void*) ; 

__attribute__((used)) static inline void FUNC1(lfs2_superblock_t *superblock) {
    superblock->version     = FUNC0(superblock->version);
    superblock->block_size  = FUNC0(superblock->block_size);
    superblock->block_count = FUNC0(superblock->block_count);
    superblock->name_max    = FUNC0(superblock->name_max);
    superblock->file_max    = FUNC0(superblock->file_max);
    superblock->attr_max    = FUNC0(superblock->attr_max);
}