#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct arcDisState {size_t* instrBuffer; size_t* operandBuffer; int instructionLen; scalar_t__* addresses; int /*<<< orphan*/  instName; int /*<<< orphan*/  condCodeName; int /*<<< orphan*/  auxRegName; int /*<<< orphan*/  coreRegName; struct arcDisState* _this; void** words; } ;
typedef  int /*<<< orphan*/  (* fprintf_ftype ) (void*,char*,size_t*) ;
struct TYPE_7__ {int (* read_memory_func ) (scalar_t__,int /*<<< orphan*/ *,int,TYPE_1__*) ;scalar_t__ endian; int /*<<< orphan*/  (* print_address_func ) (scalar_t__,TYPE_1__*) ;int /*<<< orphan*/  (* memory_error_func ) (int,scalar_t__,TYPE_1__*) ;int /*<<< orphan*/  (* fprintf_func ) (void*,char*,size_t*) ;void* stream; } ;
typedef  TYPE_1__ disassemble_info ;
typedef  scalar_t__ bfd_vma ;
typedef  int /*<<< orphan*/  bfd_byte ;

/* Variables and functions */
 scalar_t__ BFD_ENDIAN_LITTLE ; 
 scalar_t__ FUNC0 (struct arcDisState) ; 
 int /*<<< orphan*/  _auxRegName ; 
 int /*<<< orphan*/  _condCodeName ; 
 int /*<<< orphan*/  _coreRegName ; 
 int /*<<< orphan*/  _instName ; 
 void* FUNC1 (int /*<<< orphan*/ *) ; 
 void* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,void*) ; 
 int /*<<< orphan*/  FUNC4 (struct arcDisState*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (scalar_t__,int /*<<< orphan*/ *,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__,TYPE_1__*) ; 
 int FUNC7 (scalar_t__,int /*<<< orphan*/ *,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (void*,char*,size_t*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (void*,char*,size_t*) ; 

int
FUNC11 (bfd_vma address, disassemble_info *info)
{
  int status;
  bfd_byte buffer[4];
  struct arcDisState s;		/* ARC Disassembler state.  */
  void *stream = info->stream; 	/* Output stream.  */
  fprintf_ftype func = info->fprintf_func;

  FUNC4 (&s, 0, sizeof(struct arcDisState));

  /* Read first instruction.  */
  status = (*info->read_memory_func) (address, buffer, 4, info);
  if (status != 0)
    {
      (*info->memory_error_func) (status, address, info);
      return -1;
    }
    if (info->endian == BFD_ENDIAN_LITTLE) {
	    s.words[0] = FUNC2 (buffer);
    } else {
	    s.words[0] = FUNC1 (buffer);
    }
    /* Always read second word in case of limm.  */
    /* We ignore the result since last insn may not have a limm.  */
    status = (*info->read_memory_func) (address + 4, buffer, 4, info);
    if (info->endian == BFD_ENDIAN_LITTLE) {
	    s.words[1] = FUNC2 (buffer);
    } else {
	    s.words[1] = FUNC1 (buffer);
    }

    s._this = &s;
    s.coreRegName = _coreRegName;
    s.auxRegName = _auxRegName;
    s.condCodeName = _condCodeName;
    s.instName = _instName;

    /* Disassemble.  */
    FUNC3 (address, (void *)&s);

    /* Display the disassembly instruction.  */
    /*
  (*func) (stream, "%08lx ", s.words[0]);
  (*func) (stream, "  ");
*/
    (*func) (stream, "%s ", s.instrBuffer);

    if (FUNC0 (s)) {
	    bfd_vma addr = s.addresses[s.operandBuffer[1] - '0'];

	    (*info->print_address_func) ((bfd_vma)addr, info);
	    //(*func) (stream, "\n");
    } else {
	    (*func) (stream, "%s", s.operandBuffer);
    }

    return s.instructionLen;

}