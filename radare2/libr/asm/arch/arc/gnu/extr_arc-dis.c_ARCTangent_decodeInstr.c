
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct arcDisState {size_t* instrBuffer; size_t* operandBuffer; int instructionLen; scalar_t__* addresses; int instName; int condCodeName; int auxRegName; int coreRegName; struct arcDisState* _this; void** words; } ;
typedef int (* fprintf_ftype ) (void*,char*,size_t*) ;
struct TYPE_7__ {int (* read_memory_func ) (scalar_t__,int *,int,TYPE_1__*) ;scalar_t__ endian; int (* print_address_func ) (scalar_t__,TYPE_1__*) ;int (* memory_error_func ) (int,scalar_t__,TYPE_1__*) ;int (* fprintf_func ) (void*,char*,size_t*) ;void* stream; } ;
typedef TYPE_1__ disassemble_info ;
typedef scalar_t__ bfd_vma ;
typedef int bfd_byte ;


 scalar_t__ BFD_ENDIAN_LITTLE ;
 scalar_t__ __TRANSLATION_REQUIRED (struct arcDisState) ;
 int _auxRegName ;
 int _condCodeName ;
 int _coreRegName ;
 int _instName ;
 void* bfd_getb32 (int *) ;
 void* bfd_getl32 (int *) ;
 int dsmOneArcInst (scalar_t__,void*) ;
 int memset (struct arcDisState*,int ,int) ;
 int stub1 (scalar_t__,int *,int,TYPE_1__*) ;
 int stub2 (int,scalar_t__,TYPE_1__*) ;
 int stub3 (scalar_t__,int *,int,TYPE_1__*) ;
 int stub4 (void*,char*,size_t*) ;
 int stub5 (scalar_t__,TYPE_1__*) ;
 int stub6 (void*,char*,size_t*) ;

int
ARCTangent_decodeInstr (bfd_vma address, disassemble_info *info)
{
  int status;
  bfd_byte buffer[4];
  struct arcDisState s;
  void *stream = info->stream;
  fprintf_ftype func = info->fprintf_func;

  memset (&s, 0, sizeof(struct arcDisState));


  status = (*info->read_memory_func) (address, buffer, 4, info);
  if (status != 0)
    {
      (*info->memory_error_func) (status, address, info);
      return -1;
    }
    if (info->endian == BFD_ENDIAN_LITTLE) {
     s.words[0] = bfd_getl32 (buffer);
    } else {
     s.words[0] = bfd_getb32 (buffer);
    }


    status = (*info->read_memory_func) (address + 4, buffer, 4, info);
    if (info->endian == BFD_ENDIAN_LITTLE) {
     s.words[1] = bfd_getl32 (buffer);
    } else {
     s.words[1] = bfd_getb32 (buffer);
    }

    s._this = &s;
    s.coreRegName = _coreRegName;
    s.auxRegName = _auxRegName;
    s.condCodeName = _condCodeName;
    s.instName = _instName;


    dsmOneArcInst (address, (void *)&s);






    (*func) (stream, "%s ", s.instrBuffer);

    if (__TRANSLATION_REQUIRED (s)) {
     bfd_vma addr = s.addresses[s.operandBuffer[1] - '0'];

     (*info->print_address_func) ((bfd_vma)addr, info);

    } else {
     (*func) (stream, "%s", s.operandBuffer);
    }

    return s.instructionLen;

}
