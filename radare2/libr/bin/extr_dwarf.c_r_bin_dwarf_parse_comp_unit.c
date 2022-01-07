
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_9__ ;
typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_10__ ;


typedef int ut8 ;
typedef int ut64 ;
struct TYPE_21__ {int length; } ;
struct TYPE_16__ {char* string; } ;
struct TYPE_17__ {TYPE_2__ str_struct; } ;
struct TYPE_20__ {scalar_t__ name; TYPE_3__ encoding; } ;
struct TYPE_19__ {size_t length; size_t capacity; TYPE_10__* dies; TYPE_9__ hdr; } ;
struct TYPE_18__ {int length; int capacity; TYPE_1__* decls; } ;
struct TYPE_15__ {size_t length; size_t capacity; int * specs; int tag; } ;
struct TYPE_14__ {int abbrev_code; size_t length; size_t capacity; TYPE_8__* attr_values; int tag; } ;
typedef int Sdb ;
typedef TYPE_4__ RBinDwarfDebugAbbrev ;
typedef TYPE_5__ RBinDwarfCompUnit ;


 scalar_t__ DW_AT_comp_dir ;
 int eprintf (char*,...) ;
 int memset (TYPE_8__*,int ,int) ;
 int r_bin_dwarf_expand_cu (TYPE_5__*) ;
 int r_bin_dwarf_expand_die (TYPE_10__*) ;
 int r_bin_dwarf_init_die (TYPE_10__*) ;
 int * r_bin_dwarf_parse_attr_value (int const*,int,int *,TYPE_8__*,TYPE_9__*,int const*,size_t) ;
 int * r_uleb128 (int const*,int,int*) ;
 int sdb_set (int *,char*,char const*,int ) ;

__attribute__((used)) static const ut8 *r_bin_dwarf_parse_comp_unit(Sdb *s, const ut8 *obuf,
  RBinDwarfCompUnit *cu, const RBinDwarfDebugAbbrev *da,
  size_t offset, const ut8 *debug_str, size_t debug_str_len) {
 const ut8 *buf = obuf, *buf_end = obuf + (cu->hdr.length - 7);
 ut64 abbr_code;
 size_t i;

 if (cu->hdr.length > debug_str_len) {

  return ((void*)0);
 }
 while (buf && buf < buf_end && buf >= obuf) {
  if (cu->length && cu->capacity == cu->length) {
   r_bin_dwarf_expand_cu (cu);
  }
  buf = r_uleb128 (buf, buf_end - buf, &abbr_code);
  if (abbr_code > da->length || !buf) {
   return ((void*)0);
  }

  r_bin_dwarf_init_die (&cu->dies[cu->length]);
  if (!abbr_code) {
   cu->dies[cu->length].abbrev_code = 0;
   cu->length++;
   buf++;
   continue;
  }

  cu->dies[cu->length].abbrev_code = abbr_code;
  cu->dies[cu->length].tag = da->decls[abbr_code - 1].tag;
  abbr_code += offset;

  if (da->capacity < abbr_code) {
   return ((void*)0);
  }

  for (i = 0; i < da->decls[abbr_code - 1].length; i++) {
   if (cu->dies[cu->length].length == cu->dies[cu->length].capacity) {
    r_bin_dwarf_expand_die (&cu->dies[cu->length]);
   }
   if (i >= cu->dies[cu->length].capacity || i >= da->decls[abbr_code - 1].capacity) {
    eprintf ("Warning: malformed dwarf attribute capacity doesn't match length\n");
    break;
   }
   memset (&cu->dies[cu->length].attr_values[i], 0, sizeof (cu->dies[cu->length].attr_values[i]));
   buf = r_bin_dwarf_parse_attr_value (buf, buf_end - buf,
     &da->decls[abbr_code - 1].specs[i],
     &cu->dies[cu->length].attr_values[i],
     &cu->hdr, debug_str, debug_str_len);
   if (cu->dies[cu->length].attr_values[i].name == DW_AT_comp_dir) {
    const char *name = cu->dies[cu->length].attr_values[i].encoding.str_struct.string;
    if ((size_t)name > 1024) {
     sdb_set (s, "DW_AT_comp_dir", name, 0);
    } else {
     eprintf ("Invalid string pointer at %p\n", name);
    }
   }
   cu->dies[cu->length].length++;
  }
  cu->length++;
 }
 return buf;
}
