
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stag_header {int cmark; int id; int magic; int time_stamp; int image_length; int image_checksum; int tag_checksum; } ;


 int printf (char*,int,int,int,int,int,int,int) ;

void print_stag_header(struct stag_header *printed_header)
{
 printf("\tcmark: 0x%02X\n"
        "\tid: 0x%02X\n"
        "\tmagic: 0x%04X\n"
        "\ttime_stamp: 0x%08X\n"
        "\timage_length: 0x%04X\n"
        "\timage_checksum: 0x%04X\n"
        "\ttag_checksum: 0x%04X\n",
        printed_header->cmark,
        printed_header->id,
        printed_header->magic,
        printed_header->time_stamp,
        printed_header->image_length,
        printed_header->image_checksum, printed_header->tag_checksum);
}
