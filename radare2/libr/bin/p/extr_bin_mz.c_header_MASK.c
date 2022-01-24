#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct r_bin_mz_obj_t {TYPE_2__* dos_header; } ;
struct TYPE_7__ {TYPE_1__* o; } ;
struct TYPE_6__ {int signature; int /*<<< orphan*/  overlay_number; int /*<<< orphan*/  reloc_table_offset; int /*<<< orphan*/  cs; int /*<<< orphan*/  ip; int /*<<< orphan*/  checksum; int /*<<< orphan*/  sp; int /*<<< orphan*/  ss; int /*<<< orphan*/  max_extra_paragraphs; int /*<<< orphan*/  min_extra_paragraphs; int /*<<< orphan*/  header_paragraphs; int /*<<< orphan*/  num_relocs; int /*<<< orphan*/  blocks_in_file; int /*<<< orphan*/  bytes_in_last_block; } ;
struct TYPE_5__ {scalar_t__ bin_obj; } ;
typedef  TYPE_3__ RBinFile ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 

__attribute__((used)) static void FUNC1(RBinFile *bf) {
	const struct r_bin_mz_obj_t *mz = (struct r_bin_mz_obj_t *)bf->o->bin_obj;
	FUNC0 ("[0000:0000]  Signature           %c%c\n",
		mz->dos_header->signature & 0xFF,
		mz->dos_header->signature >> 8);
	FUNC0 ("[0000:0002]  BytesInLastBlock    0x%04x\n",
		mz->dos_header->bytes_in_last_block);
	FUNC0 ("[0000:0004]  BlocksInFile        0x%04x\n",
		mz->dos_header->blocks_in_file);
	FUNC0 ("[0000:0006]  NumRelocs           0x%04x\n",
		mz->dos_header->num_relocs);
	FUNC0 ("[0000:0008]  HeaderParagraphs    0x%04x\n",
		mz->dos_header->header_paragraphs);
	FUNC0 ("[0000:000a]  MinExtraParagraphs  0x%04x\n",
		mz->dos_header->min_extra_paragraphs);
	FUNC0 ("[0000:000c]  MaxExtraParagraphs  0x%04x\n",
		mz->dos_header->max_extra_paragraphs);
	FUNC0 ("[0000:000e]  InitialSs           0x%04x\n",
		mz->dos_header->ss);
	FUNC0 ("[0000:0010]  InitialSp           0x%04x\n",
		mz->dos_header->sp);
	FUNC0 ("[0000:0012]  Checksum            0x%04x\n",
		mz->dos_header->checksum);
	FUNC0 ("[0000:0014]  InitialIp           0x%04x\n",
		mz->dos_header->ip);
	FUNC0 ("[0000:0016]  InitialCs           0x%04x\n",
		mz->dos_header->cs);
	FUNC0 ("[0000:0018]  RelocTableOffset    0x%04x\n",
		mz->dos_header->reloc_table_offset);
	FUNC0 ("[0000:001a]  OverlayNumber       0x%04x\n",
		mz->dos_header->overlay_number);
}