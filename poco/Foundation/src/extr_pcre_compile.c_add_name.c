
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ pcre_uchar ;
struct TYPE_3__ {int names_found; int name_entry_size; scalar_t__* name_table; } ;
typedef TYPE_1__ compile_data ;


 int IMM2_SIZE ;
 int IN_UCHARS (int) ;
 int PUT2 (scalar_t__*,int ,unsigned int) ;
 int memcmp (scalar_t__ const*,scalar_t__*,int ) ;
 int memcpy (scalar_t__*,scalar_t__ const*,int ) ;
 int memmove (scalar_t__*,scalar_t__*,int ) ;

__attribute__((used)) static void
add_name(compile_data *cd, const pcre_uchar *name, int length,
  unsigned int groupno)
{
int i;
pcre_uchar *slot = cd->name_table;

for (i = 0; i < cd->names_found; i++)
  {
  int crc = memcmp(name, slot+IMM2_SIZE, IN_UCHARS(length));
  if (crc == 0 && slot[IMM2_SIZE+length] != 0)
    crc = -1;






  if (crc < 0)
    {
    memmove(slot + cd->name_entry_size, slot,
      IN_UCHARS((cd->names_found - i) * cd->name_entry_size));
    break;
    }



  slot += cd->name_entry_size;
  }

PUT2(slot, 0, groupno);
memcpy(slot + IMM2_SIZE, name, IN_UCHARS(length));
slot[IMM2_SIZE + length] = 0;
cd->names_found++;
}
