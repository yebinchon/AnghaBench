
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_4__ {int crc; int her_znaet_chto; int ldaddress; int hcs; int build_date; int filelen; int filename; int rev_min; int rev_maj; int control; int magic; } ;
typedef TYPE_1__ ldr_header_t ;


 char* get_control_info (int ) ;
 int get_hcs (TYPE_1__*) ;
 int printf (char*,...) ;
 int reverse_endian16 (int ) ;
 int reverse_endian32 (int ) ;

int dump_header ( ldr_header_t* hd )
{
 printf ( "=== Header Information ===\n" );
 printf ( "Header magic:\t0x%04X\n",reverse_endian16 ( hd->magic ) );
 printf ( "Control:\t0x%04X (%s)\n",reverse_endian16 ( hd->control ), get_control_info ( hd->control ) );
 printf ( "Major rev. :\t0x%04X\n",reverse_endian16 ( hd->rev_maj ) );
 printf ( "Minor rev. :\t0x%04X\n",reverse_endian16 ( hd->rev_min ) );
 printf ( "File name :\t%s\n", ( char* ) &hd->filename );
 printf ( "File length:\t%d bytes\n", reverse_endian32 ( hd->filelen ) );
 printf ( "Build time:\t0x%08X //FixMe: print in human-readable form\n", reverse_endian32 ( hd->build_date ) );
 printf ( "HCS:\t\t0x%04X  ",reverse_endian16 ( hd->hcs ) );
 uint16_t hcs = get_hcs ( hd );
 int ret=0;
 if ( hcs ==reverse_endian16 ( hd->hcs ) )
 {
  printf ( "(OK!)\n" );
 }
 else
 {
  printf ( "(ERROR! expected 0x%04X)\n",hcs );
  ret=1;
 }

 printf ( "Load address:\t0x%08X\n", reverse_endian32 ( hd->ldaddress ) );
 printf ( "HNW:\t\t0x%04X\n",reverse_endian16 ( hd->her_znaet_chto ) );
 printf ( "CRC:\t\t0x%08X\n",reverse_endian32 ( hd->crc ) );
 printf ( "=== Binary Header Dump===\n" );
 int i,j;
 uint8_t* head = ( uint8_t* ) hd;
 for ( i=0;i<=sizeof ( ldr_header_t );i++ )
 {
  if ( i % 8==0 )
   printf ( "\n" );
  printf ( "0x%02x   ",head[i] );
 }
 printf ( "\n\n== End Of Header dump ==\n" );
 return ret;
}
