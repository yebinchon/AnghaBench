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
typedef  char ut8 ;
typedef  int ut64 ;
typedef  int ut32 ;
typedef  int ut16 ;
typedef  int /*<<< orphan*/  RBuffer ;
typedef  int /*<<< orphan*/  RBinArchOptions ;
typedef  int /*<<< orphan*/  RBin ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static RBuffer* FUNC9(RBin* bin, const ut8 *code, int codelen, const ut8 *data, int datalen, RBinArchOptions *opt) {
	ut32 p_start, p_phoff, p_phdr;
	ut32 p_vaddr, p_paddr, p_fs, p_fs2;
	ut32 p_ehdrsz, p_phdrsz;
	ut64 filesize, code_va, code_pa, phoff;
	ut16 ehdrsz, phdrsz;
	ut64 baddr = 0x400000LL;
	RBuffer *buf = FUNC7 ();

#define B(x,y) r_buf_append_bytes(buf,(const ut8*)(x),y)
#define Q(x) r_buf_append_ut64(buf,x)
#define D(x) r_buf_append_ut32(buf,x)
#define H(x) r_buf_append_ut16(buf,x)
#define Z(x) r_buf_append_nbytes(buf,x)
#define W(x,y,z) r_buf_write_at(buf,x,(const ut8*)(y),z)

	/* Ehdr */
	B ("\x7F" "ELF" "\x02\x01\x01\x00", 8); // e_ident (ei_class = ELFCLASS64)
	Z (8);
	H (2); // e_type = ET_EXEC
	H (62); // e_machine = EM_X86_64
	D (1); // e_version = EV_CURRENT
	p_start = FUNC8 (buf);
	Q (-1); // e_entry = 0xFFFFFFFF
	p_phoff = FUNC8 (buf);
	Q (-1); // e_phoff = 0xFFFFFFFF
	Q (0);  // e_shoff = 0xFFFFFFFF
	D (0);  // e_flags
	p_ehdrsz = FUNC8 (buf);
	H (-1); // e_ehsize = 0xFFFFFFFF
	p_phdrsz = FUNC8 (buf);
	H (-1); // e_phentsize = 0xFFFFFFFF
	H (1);  // e_phnum
	H (0);  // e_shentsize
	H (0);  // e_shnum
	H (0);  // e_shstrndx

	/* Phdr */
	p_phdr = FUNC8 (buf);
	D (1); // p_type
	D (5);  // p_flags = PF_R | PF_X
	Q (0);  // p_offset
	p_vaddr = FUNC8 (buf);
	Q (-1); // p_vaddr = 0xFFFFFFFF
	p_paddr = FUNC8 (buf);
	Q (-1); // p_paddr = 0xFFFFFFFF
	p_fs = FUNC8 (buf);
	Q (-1); // p_filesz
	p_fs2 = FUNC8 (buf);
	Q (-1); // p_memsz
	Q (0x200000); // p_align

	/* Calc fields */
	ehdrsz = p_phdr;
	phdrsz = FUNC8 (buf) - p_phdr;
	code_pa = FUNC8 (buf);
	code_va = code_pa + baddr;
	phoff = p_phdr;
	filesize = code_pa + codelen + datalen;

	/* Write fields */
	W (p_start, &code_va, 8);
	W (p_phoff, &phoff, 8);
	W (p_ehdrsz, &ehdrsz, 2);
	W (p_phdrsz, &phdrsz, 2);
	W (p_fs, &filesize, 8);
	W (p_fs2, &filesize, 8);

	W (p_vaddr, &baddr, 8);
	W (p_paddr, &baddr, 8);

	/* Append code */
	B (code, codelen);

	if (data && datalen>0) {
		FUNC6 ("Warning: DATA section not support for ELF yet\n");
		B (data, datalen);
	}
	return buf;
}