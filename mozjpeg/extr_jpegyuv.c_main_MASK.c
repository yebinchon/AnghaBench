#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct jpeg_error_mgr {int dummy; } ;
struct jpeg_decompress_struct {int output_width; int output_height; int output_scanline; int /*<<< orphan*/  do_fancy_upsampling; int /*<<< orphan*/  raw_data_out; int /*<<< orphan*/  err; } ;
typedef  unsigned char* JSAMPROW ;
typedef  unsigned char JSAMPLE ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*) ; 
 int FUNC4 (unsigned char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct jpeg_decompress_struct*) ; 
 int /*<<< orphan*/  FUNC6 (struct jpeg_decompress_struct*) ; 
 int /*<<< orphan*/  FUNC7 (struct jpeg_decompress_struct*) ; 
 int /*<<< orphan*/  FUNC8 (struct jpeg_decompress_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct jpeg_decompress_struct*,unsigned char***,int) ; 
 int /*<<< orphan*/  FUNC10 (struct jpeg_decompress_struct*) ; 
 int /*<<< orphan*/  FUNC11 (struct jpeg_error_mgr*) ; 
 int /*<<< orphan*/  FUNC12 (struct jpeg_decompress_struct*,int /*<<< orphan*/ *) ; 
 unsigned char* FUNC13 (int) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC14(int argc, char *argv[]) {
  const char *jpg_path;
  const char *yuv_path;
  struct jpeg_decompress_struct cinfo;
  struct jpeg_error_mgr jerr;
  FILE *jpg_fd;
  int luma_width;
  int luma_height;
  int chroma_width;
  int chroma_height;
  int frame_width;
  int yuv_size;
  JSAMPLE *jpg_buffer;
  JSAMPROW yrow_pointer[16];
  JSAMPROW cbrow_pointer[8];
  JSAMPROW crrow_pointer[8];
  JSAMPROW *plane_pointer[3];
  unsigned char *yuv_buffer;
  int x;
  int y;
  FILE *yuv_fd;

  if (argc != 3) {
    FUNC2(stderr, "Required arguments:\n");
    FUNC2(stderr, "1. Path to JPG input file\n");
    FUNC2(stderr, "2. Path to YUV output file\n");
    return 1;
  }

  /* Will check these for validity when opening via 'fopen'. */
  jpg_path = argv[1];
  yuv_path = argv[2];

  cinfo.err = FUNC11(&jerr);
  FUNC5(&cinfo);

  jpg_fd = FUNC1(jpg_path, "rb");
  if (!jpg_fd) {
    FUNC2(stderr, "Invalid path to JPEG file!\n");
    return 1;
  }

  FUNC12(&cinfo, jpg_fd);

  FUNC8(&cinfo, TRUE);

  cinfo.raw_data_out = TRUE;
  cinfo.do_fancy_upsampling = FALSE;

  FUNC10(&cinfo);

  luma_width = cinfo.output_width;
  luma_height = cinfo.output_height;

  chroma_width = (luma_width + 1) >> 1;
  chroma_height = (luma_height + 1) >> 1;

  yuv_size = luma_width*luma_height + 2*chroma_width*chroma_height;
  yuv_buffer = FUNC13(yuv_size);
  if (!yuv_buffer) {
    FUNC0(jpg_fd);
    FUNC2(stderr, "Memory allocation failure!\n");
    return 1;
  }

  frame_width = (cinfo.output_width + (16 - 1)) & ~(16 - 1);

  jpg_buffer = FUNC13(frame_width*16 + 2*(frame_width/2)*8);
  if (!jpg_buffer) {
    FUNC0(jpg_fd);
    FUNC3(yuv_buffer);
    FUNC2(stderr, "Memory allocation failure!\n");
    return 1;
  }

  plane_pointer[0] = yrow_pointer;
  plane_pointer[1] = cbrow_pointer;
  plane_pointer[2] = crrow_pointer;

  for (y = 0; y < 16; y++) {
    yrow_pointer[y] = &jpg_buffer[frame_width*y];
  }
  for (y = 0; y < 8; y++) {
    cbrow_pointer[y] = &jpg_buffer[frame_width*16 + (frame_width/2)*y];
    crrow_pointer[y] = &jpg_buffer[frame_width*16 + (frame_width/2)*(8 + y)];
  }

  while (cinfo.output_scanline < cinfo.output_height) {
    int luma_scanline;
    int chroma_scanline;

    luma_scanline = cinfo.output_scanline;
    chroma_scanline = (luma_scanline + 1) >> 1;

    FUNC9(&cinfo, plane_pointer, 16);

    for (y = 0; y < 16 && luma_scanline + y < luma_height; y++) {
      for (x = 0; x < luma_width; x++) {
        yuv_buffer[luma_width*(luma_scanline + y) + x] = yrow_pointer[y][x];
      }
    }
    for (y = 0; y < 8 && chroma_scanline + y < chroma_height; y++) {
      for (x = 0; x < chroma_width; x++) {
        yuv_buffer[luma_width*luma_height +
         chroma_width*(chroma_scanline + y) + x] = cbrow_pointer[y][x];
        yuv_buffer[luma_width*luma_height + chroma_width*chroma_height +
         chroma_width*(chroma_scanline + y) + x] = crrow_pointer[y][x];
      }
    }
  }

  FUNC7(&cinfo);
  FUNC6(&cinfo);

  FUNC0(jpg_fd);
  FUNC3(jpg_buffer);

  yuv_fd = FUNC1(yuv_path, "wb");
  if (!yuv_fd) {
    FUNC2(stderr, "Invalid path to YUV file!");
    FUNC3(yuv_buffer);
    return 1;
  }
  if (FUNC4(yuv_buffer, yuv_size, 1, yuv_fd) != 1) {
    FUNC2(stderr, "Error writing yuv file\n");
  }

  FUNC0(yuv_fd);
  FUNC3(yuv_buffer);

  return 0;
}