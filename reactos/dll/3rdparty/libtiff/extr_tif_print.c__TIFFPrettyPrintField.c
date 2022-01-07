
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32 ;
typedef int uint16 ;
struct TYPE_3__ {int field_type; int field_name; } ;
typedef TYPE_1__ TIFFField ;
typedef int TIFF ;
typedef int FILE ;
 int TIFF_DOUBLE ;
 int TIFF_RATIONAL ;
 int TIFF_SHORT ;
 int fprintf (int *,char*,...) ;
 int fputc (char,int *) ;
 scalar_t__ strncmp (int ,char*,int) ;

__attribute__((used)) static int
_TIFFPrettyPrintField(TIFF* tif, const TIFFField *fip, FILE* fd, uint32 tag,
        uint32 value_count, void *raw_data)
{
        (void) tif;


 if (strncmp(fip->field_name,"Tag ", 4) == 0) {
  return 0;
 }

 switch (tag)
 {
  case 133:
   if (value_count == 2 && fip->field_type == TIFF_SHORT) {
    fprintf(fd, "  Ink Set: ");
    switch (*((uint16*)raw_data)) {
    case 136:
     fprintf(fd, "CMYK\n");
     break;
    default:
     fprintf(fd, "%u (0x%x)\n",
      *((uint16*)raw_data),
      *((uint16*)raw_data));
     break;
    }
    return 1;
   }
   return 0;

  case 135:
   if (value_count == 2 && fip->field_type == TIFF_SHORT) {
    fprintf(fd, "  Dot Range: %u-%u\n",
     ((uint16*)raw_data)[0], ((uint16*)raw_data)[1]);
    return 1;
   }
   return 0;

  case 129:
   if (value_count == 2 && fip->field_type == TIFF_RATIONAL) {
    fprintf(fd, "  White Point: %g-%g\n",
     ((float *)raw_data)[0], ((float *)raw_data)[1]);
    return 1;
   }
   return 0;

  case 128:
  {
   uint32 i;

   fprintf(fd, "  XMLPacket (XMP Metadata):\n" );
   for(i = 0; i < value_count; i++)
    fputc(((char *)raw_data)[i], fd);
   fprintf( fd, "\n" );
   return 1;
  }
  case 131:




   fprintf(fd,
       "  RichTIFFIPTC Data: <present>, %lu bytes\n",
       (unsigned long) value_count * 4);
   return 1;

  case 132:
   fprintf(fd, "  Photoshop Data: <present>, %lu bytes\n",
       (unsigned long) value_count);
   return 1;

  case 134:
   fprintf(fd, "  ICC Profile: <present>, %lu bytes\n",
       (unsigned long) value_count);
   return 1;

  case 130:
   if (value_count == 1 && fip->field_type == TIFF_DOUBLE) {
    fprintf(fd,
     "  Sample to Nits conversion factor: %.4e\n",
     *((double*)raw_data));
    return 1;
   }
   return 0;
 }

 return 0;
}
