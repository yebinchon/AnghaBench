
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_5__ {int* filename; void* hcs; void* crc; void* ldaddress; void* filelen; void* build_date; void* rev_maj; void* rev_min; scalar_t__ control; void* magic; } ;
typedef TYPE_1__ ldr_header_t ;


 int get_hcs (TYPE_1__*) ;
 TYPE_1__* malloc (int) ;
 int printf (char*,...) ;
 void* reverse_endian16 (int ) ;
 void* reverse_endian32 (int ) ;
 int strcpy (char*,char const*) ;
 int strlen (char const*) ;
 int strncpy (char*,char const*,int) ;

ldr_header_t* construct_header ( uint32_t magic, uint16_t rev_maj,uint16_t rev_min, uint32_t build_date, uint32_t filelen, uint32_t ldaddress, const char* filename, uint32_t crc_data )
{
 ldr_header_t* hd = malloc ( sizeof ( ldr_header_t ) );
 hd->magic=reverse_endian16 ( magic );
 hd->control=0;
 hd->rev_min = reverse_endian16 ( rev_min );
 hd->rev_maj = reverse_endian16 ( rev_maj );
 hd->build_date = reverse_endian32 ( build_date );
 hd->filelen = reverse_endian32 ( filelen );
 hd->ldaddress = reverse_endian32 ( ldaddress );
 printf ( "Creating header for %s...\n", filename );
 if ( strlen ( filename ) >63 )
 {
  printf ( "[!] Filename too long - stripping it to 63 bytes.\n" );
  strncpy ( ( char* ) &hd->filename, filename, 63 );
  hd->filename[63]=0x00;
 }
 else
 {
  strcpy ( ( char* ) &hd->filename, filename );
 }
 hd->crc=reverse_endian32 ( crc_data );
 hd->hcs = reverse_endian16 ( get_hcs ( hd ) );
 return hd;
}
