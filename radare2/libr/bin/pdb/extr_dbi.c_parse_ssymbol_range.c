
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int reloc_crc; int data_crc; int module; int flags; int size; int offset; int padding1; int section; } ;
typedef TYPE_1__ SSymbolRange ;


 int READ2 (int,int,int ,char*,int ) ;
 int READ4 (int,int,int ,char*,int ) ;
 int st16 ;
 int st32 ;
 int ut32 ;

__attribute__((used)) static int parse_ssymbol_range(char *data, int max_len, SSymbolRange *symbol_range) {
 int read_bytes = 0;

 READ2(read_bytes, max_len, symbol_range->section, data, st16);
 READ2(read_bytes, max_len, symbol_range->padding1, data, st16);
 READ4(read_bytes, max_len, symbol_range->offset, data, st32);
 READ4(read_bytes, max_len, symbol_range->size, data, st32);
 READ4(read_bytes, max_len, symbol_range->flags, data, ut32);
 READ4(read_bytes, max_len, symbol_range->module, data, st32);



 READ4(read_bytes, max_len, symbol_range->data_crc, data, ut32);
 READ4(read_bytes, max_len, symbol_range->reloc_crc, data, ut32);

 return read_bytes;
}
