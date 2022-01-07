
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {unsigned short leaf_type; void* type_info; } ;
struct TYPE_4__ {int length; TYPE_3__ type_data; } ;
typedef TYPE_1__ SType ;
typedef int SLF_POINTER ;
typedef int R_STREAM_FILE ;


 int PARSE_LF (int ,int ) ;
 int SLF_ARGLIST ;
 int SLF_ARRAY ;
 int SLF_BITFIELD ;
 int SLF_CLASS ;
 int SLF_ENUM ;
 int SLF_FIELDLIST ;
 int SLF_MFUNCTION ;
 int SLF_MODIFIER ;
 int SLF_PROCEDURE ;
 int SLF_STRUCTURE ;
 int SLF_UNION ;
 int SLF_VTSHAPE ;
 int free (unsigned char*) ;
 int init_stype_info (TYPE_3__*) ;
 int lf_arglist ;
 int lf_array ;
 int lf_bitfield ;
 int lf_class ;
 int lf_enum ;
 int lf_fieldlist ;
 int lf_mfunction ;
 int lf_modifier ;
 int lf_procedure ;
 int lf_structure ;
 int lf_union ;
 int lf_vtshape ;
 scalar_t__ malloc (int) ;
 int parse_lf_pointer (int *,unsigned char*,unsigned int*,int) ;
 int printf (char*) ;
 int stream_file_read (int *,int,char*) ;

__attribute__((used)) static int parse_tpi_stypes(R_STREAM_FILE *stream, SType *type) {
 unsigned char *leaf_data;
 unsigned int read_bytes = 0;

 stream_file_read(stream, 2, (char *)&type->length);
 if (type->length < 1) {
  return 0;
 }
 leaf_data = (unsigned char *) malloc(type->length);
 if (!leaf_data) {
  return 0;
 }
 stream_file_read (stream, type->length, (char *)leaf_data);
 type->type_data.leaf_type = *(unsigned short *)leaf_data;
 read_bytes += 2;
 switch (type->type_data.leaf_type) {
 case 136:

  PARSE_LF(SLF_FIELDLIST, lf_fieldlist);
  break;
 case 137:

  PARSE_LF(SLF_ENUM, lf_enum);
  break;

 case 138:

  PARSE_LF(SLF_CLASS, lf_class);
  break;
 case 130:

  PARSE_LF(SLF_STRUCTURE, lf_structure);
  break;
 case 132:

 {
  SLF_POINTER *lf = (SLF_POINTER *) malloc(sizeof(SLF_POINTER)); if (!lf) { free (leaf_data); return 0; } parse_lf_pointer(lf, leaf_data + 2, &read_bytes, type->length); type->type_data.type_info = (void *) lf; init_stype_info(&type->type_data); }
  break;
 case 140:

  PARSE_LF(SLF_ARRAY, lf_array);
  break;
 case 133:

  PARSE_LF(SLF_MODIFIER, lf_modifier);
  break;
 case 141:

  PARSE_LF(SLF_ARGLIST, lf_arglist);
  break;
 case 134:

  PARSE_LF(SLF_MFUNCTION, lf_mfunction);
  break;
 case 135:

  break;
 case 131:

  PARSE_LF(SLF_PROCEDURE, lf_procedure);
  break;
 case 129:

  PARSE_LF(SLF_UNION, lf_union);
  break;
 case 139:

  PARSE_LF(SLF_BITFIELD, lf_bitfield);
  break;
 case 128:

  PARSE_LF(SLF_VTSHAPE, lf_vtshape);
  break;
 default:
  printf("parse_tpi_streams(): unsupported leaf type\n");
  break;
 }

 free (leaf_data);
 return read_bytes;
}
