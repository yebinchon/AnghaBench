
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32 ;
struct TYPE_5__ {int field_type; char* field_name; int * field_subfields; void* field_passcount; void* field_oktochange; int field_bit; void* get_field_type; void* set_field_type; scalar_t__ reserved; void* field_writecount; void* field_readcount; scalar_t__ field_tag; } ;
typedef TYPE_1__ TIFFField ;
typedef int TIFFDataType ;
typedef int TIFF ;


 int FIELD_CUSTOM ;
 void* TIFF_SETGET_C32_ASCII ;
 void* TIFF_SETGET_C32_DOUBLE ;
 void* TIFF_SETGET_C32_FLOAT ;
 void* TIFF_SETGET_C32_IFD8 ;
 void* TIFF_SETGET_C32_SINT16 ;
 void* TIFF_SETGET_C32_SINT32 ;
 void* TIFF_SETGET_C32_SINT64 ;
 void* TIFF_SETGET_C32_SINT8 ;
 void* TIFF_SETGET_C32_UINT16 ;
 void* TIFF_SETGET_C32_UINT32 ;
 void* TIFF_SETGET_C32_UINT64 ;
 void* TIFF_SETGET_C32_UINT8 ;
 void* TIFF_SETGET_UNDEFINED ;






 void* TIFF_VARIABLE2 ;
 void* TRUE ;
 int _TIFFfree (TYPE_1__*) ;
 scalar_t__ _TIFFmalloc (int) ;
 int _TIFFmemset (TYPE_1__*,int ,int) ;
 int snprintf (char*,int,char*,int) ;

TIFFField*
_TIFFCreateAnonField(TIFF *tif, uint32 tag, TIFFDataType field_type)
{
 TIFFField *fld;
 (void) tif;

 fld = (TIFFField *) _TIFFmalloc(sizeof (TIFFField));
 if (fld == ((void*)0))
     return ((void*)0);
 _TIFFmemset(fld, 0, sizeof(TIFFField));

 fld->field_tag = tag;
 fld->field_readcount = TIFF_VARIABLE2;
 fld->field_writecount = TIFF_VARIABLE2;
 fld->field_type = field_type;
 fld->reserved = 0;
 switch (field_type)
 {
  case 142:
  case 128:
   fld->set_field_type = TIFF_SETGET_C32_UINT8;
   fld->get_field_type = TIFF_SETGET_C32_UINT8;
   break;
  case 143:
   fld->set_field_type = TIFF_SETGET_C32_ASCII;
   fld->get_field_type = TIFF_SETGET_C32_ASCII;
   break;
  case 133:
   fld->set_field_type = TIFF_SETGET_C32_UINT16;
   fld->get_field_type = TIFF_SETGET_C32_UINT16;
   break;
  case 137:
   fld->set_field_type = TIFF_SETGET_C32_UINT32;
   fld->get_field_type = TIFF_SETGET_C32_UINT32;
   break;
  case 135:
  case 130:
  case 140:
   fld->set_field_type = TIFF_SETGET_C32_FLOAT;
   fld->get_field_type = TIFF_SETGET_C32_FLOAT;
   break;
  case 134:
   fld->set_field_type = TIFF_SETGET_C32_SINT8;
   fld->get_field_type = TIFF_SETGET_C32_SINT8;
   break;
  case 129:
   fld->set_field_type = TIFF_SETGET_C32_SINT16;
   fld->get_field_type = TIFF_SETGET_C32_SINT16;
   break;
  case 132:
   fld->set_field_type = TIFF_SETGET_C32_SINT32;
   fld->get_field_type = TIFF_SETGET_C32_SINT32;
   break;
  case 141:
   fld->set_field_type = TIFF_SETGET_C32_DOUBLE;
   fld->get_field_type = TIFF_SETGET_C32_DOUBLE;
   break;
  case 139:
  case 138:
   fld->set_field_type = TIFF_SETGET_C32_IFD8;
   fld->get_field_type = TIFF_SETGET_C32_IFD8;
   break;
  case 136:
   fld->set_field_type = TIFF_SETGET_C32_UINT64;
   fld->get_field_type = TIFF_SETGET_C32_UINT64;
   break;
  case 131:
   fld->set_field_type = TIFF_SETGET_C32_SINT64;
   fld->get_field_type = TIFF_SETGET_C32_SINT64;
   break;
  default:
   fld->set_field_type = TIFF_SETGET_UNDEFINED;
   fld->get_field_type = TIFF_SETGET_UNDEFINED;
   break;
 }
 fld->field_bit = FIELD_CUSTOM;
 fld->field_oktochange = TRUE;
 fld->field_passcount = TRUE;
 fld->field_name = (char *) _TIFFmalloc(32);
 if (fld->field_name == ((void*)0)) {
     _TIFFfree(fld);
     return ((void*)0);
 }
 fld->field_subfields = ((void*)0);





 (void) snprintf(fld->field_name, 32, "Tag %d", (int) tag);

 return fld;
}
