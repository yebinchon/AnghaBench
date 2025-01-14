
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct arcDisState {int instructionLen; int* words; int instName; int condCodeName; int auxRegName; int coreRegName; struct arcDisState* _this; } ;
struct TYPE_10__ {scalar_t__ endian; int (* read_memory_func ) (scalar_t__,int*,int,TYPE_1__*) ;int bytes_per_line; int (* memory_error_func ) (int,scalar_t__,TYPE_1__*) ;} ;
typedef TYPE_1__ disassemble_info ;
typedef scalar_t__ bfd_vma ;
typedef int bfd_byte ;


 scalar_t__ BFD_ENDIAN_LITTLE ;
 int _auxRegName ;
 int _condCodeName ;
 int _coreRegName ;
 int _instName ;
 void* bfd_getb32 (int*) ;
 void* bfd_getl32 (int*) ;
 int dsmOneArcInst (scalar_t__,void*,TYPE_1__*) ;
 int memset (struct arcDisState*,int ,int) ;
 int stub1 (scalar_t__,int*,int,TYPE_1__*) ;
 int stub2 (int,scalar_t__,TYPE_1__*) ;
 int stub3 (scalar_t__,int*,int,TYPE_1__*) ;
 int stub4 (scalar_t__,int*,int,TYPE_1__*) ;
 int stub5 (int,scalar_t__,TYPE_1__*) ;
 int stub6 (scalar_t__,int*,int,TYPE_1__*) ;

struct arcDisState
arcAnalyzeInstr
(
 bfd_vma address,
 disassemble_info* info
 )
{
  int status;
  bfd_byte buffer[4];
  struct arcDisState s;
  int bytes;
  int lowbyte, highbyte;

  lowbyte = ((info->endian == BFD_ENDIAN_LITTLE) ? 1 : 0);
  highbyte = ((info->endian == BFD_ENDIAN_LITTLE) ? 0 : 1);

  memset(&s, 0, sizeof(struct arcDisState));


  status = (*info->read_memory_func) (address, buffer, 2, info);

  if (status != 0)
    {
      (*info->memory_error_func) (status, address, info);
      s.instructionLen = -1;
      return s;
    }

  if (((buffer[lowbyte] & 0xf8) > 0x38) && ((buffer[lowbyte] & 0xf8) != 0x48))
  {
    s.instructionLen = 2;
    s.words[0] = (buffer[lowbyte] << 8) | buffer[highbyte];
    status = (*info->read_memory_func) (address + 2, buffer, 4, info);
    if (info->endian == BFD_ENDIAN_LITTLE) {
     s.words[1] = bfd_getl32 (buffer);
    } else {
     s.words[1] = bfd_getb32 (buffer);
    }
  }
  else
  {
    s.instructionLen = 4;
    status = (*info->read_memory_func) (address + 2, &buffer[2], 2, info);
    if (status != 0)
    {
      (*info->memory_error_func) (status, address + 2, info);
      s.instructionLen = -1;
      return s;
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
  }

  s._this = &s;
  s.coreRegName = _coreRegName;
  s.auxRegName = _auxRegName;
  s.condCodeName = _condCodeName;
  s.instName = _instName;


  bytes = dsmOneArcInst(address, (void *)&s, info);

  info->bytes_per_line = bytes;
  return s;
}
