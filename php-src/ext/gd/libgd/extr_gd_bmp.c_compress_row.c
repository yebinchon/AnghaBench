
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BMP_RLE_TYPE_RAW ;
 int BMP_RLE_TYPE_RLE ;
 int build_rle_packet (unsigned char*,int,int,unsigned char*) ;
 int gdFree (unsigned char*) ;
 scalar_t__ gdMalloc (int) ;
 scalar_t__ memcmp (unsigned char*,unsigned char*,int) ;
 int memcpy (unsigned char*,unsigned char*,int) ;

__attribute__((used)) static int compress_row(unsigned char *row, int length)
{
 int rle_type = 0;
 int compressed_length = 0;
 int pixel = 0, compressed_run = 0, rle_compression = 0;
 unsigned char *uncompressed_row = ((void*)0), *uncompressed_rowp = ((void*)0), *uncompressed_start = ((void*)0);

 uncompressed_row = (unsigned char *) gdMalloc(length);
 if (!uncompressed_row) {
  return -1;
 }

 memcpy(uncompressed_row, row, length);
 uncompressed_start = uncompressed_rowp = uncompressed_row;

 for (pixel = 0; pixel < length; pixel++) {
  if (compressed_run == 0) {
   uncompressed_row = uncompressed_rowp;
   compressed_run++;
   uncompressed_rowp++;
   rle_type = BMP_RLE_TYPE_RAW;
   continue;
  }

  if (compressed_run == 1) {

   if (memcmp(uncompressed_rowp, uncompressed_rowp - 1, 1) == 0) {
    rle_type = BMP_RLE_TYPE_RLE;
   }
  }

  if (rle_type == BMP_RLE_TYPE_RLE) {
   if (compressed_run >= 128 || memcmp(uncompressed_rowp, uncompressed_rowp - 1, 1) != 0) {

    rle_compression = build_rle_packet(row, rle_type, compressed_run, uncompressed_row);
    row += rle_compression;
    compressed_length += rle_compression;
    compressed_run = 0;
    pixel--;
   } else {
    compressed_run++;
    uncompressed_rowp++;
   }
  } else {
   if (compressed_run >= 128 || memcmp(uncompressed_rowp, uncompressed_rowp - 1, 1) == 0) {

    rle_compression = build_rle_packet(row, rle_type, compressed_run, uncompressed_row);
    row += rle_compression;
    compressed_length += rle_compression;
    compressed_run = 0;
    pixel--;
   } else {

    compressed_run++;
    uncompressed_rowp++;
   }

  }
 }

 if (compressed_run) {
  if (rle_type == BMP_RLE_TYPE_RLE) {
   compressed_length += build_rle_packet(row, rle_type, compressed_run, uncompressed_row);
  }
 }

 gdFree(uncompressed_start);

 return compressed_length;
}
