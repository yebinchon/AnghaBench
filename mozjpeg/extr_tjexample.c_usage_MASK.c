#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int num; int denom; } ;

/* Variables and functions */
 int DEFAULT_QUALITY ; 
 size_t DEFAULT_SUBSAMP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int numScalingFactors ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 TYPE_1__* scalingFactors ; 
 char** subsampName ; 

void FUNC2(char *programName)
{
  int i;

  FUNC1("\nUSAGE: %s <Input image> <Output image> [options]\n\n",
         programName);

  FUNC1("Input and output images can be in Windows BMP or PBMPLUS (PPM/PGM) format.  If\n");
  FUNC1("either filename ends in a .jpg extension, then the TurboJPEG API will be used\n");
  FUNC1("to compress or decompress the image.\n\n");

  FUNC1("Compression Options (used if the output image is a JPEG image)\n");
  FUNC1("--------------------------------------------------------------\n\n");

  FUNC1("-subsamp <444|422|420|gray> = Apply this level of chrominance subsampling when\n");
  FUNC1("     compressing the output image.  The default is to use the same level of\n");
  FUNC1("     subsampling as in the input image, if the input image is also a JPEG\n");
  FUNC1("     image, or to use grayscale if the input image is a grayscale non-JPEG\n");
  FUNC1("     image, or to use %s subsampling otherwise.\n\n",
         subsampName[DEFAULT_SUBSAMP]);

  FUNC1("-q <1-100> = Compress the output image with this JPEG quality level\n");
  FUNC1("     (default = %d).\n\n", DEFAULT_QUALITY);

  FUNC1("Decompression Options (used if the input image is a JPEG image)\n");
  FUNC1("---------------------------------------------------------------\n\n");

  FUNC1("-scale M/N = Scale the input image by a factor of M/N when decompressing it.\n");
  FUNC1("(M/N = ");
  for (i = 0; i < numScalingFactors; i++) {
    FUNC1("%d/%d", scalingFactors[i].num, scalingFactors[i].denom);
    if (numScalingFactors == 2 && i != numScalingFactors - 1)
      FUNC1(" or ");
    else if (numScalingFactors > 2) {
      if (i != numScalingFactors - 1)
        FUNC1(", ");
      if (i == numScalingFactors - 2)
        FUNC1("or ");
    }
  }
  FUNC1(")\n\n");

  FUNC1("-hflip, -vflip, -transpose, -transverse, -rot90, -rot180, -rot270 =\n");
  FUNC1("     Perform one of these lossless transform operations on the input image\n");
  FUNC1("     prior to decompressing it (these options are mutually exclusive.)\n\n");

  FUNC1("-grayscale = Perform lossless grayscale conversion on the input image prior\n");
  FUNC1("     to decompressing it (can be combined with the other transform operations\n");
  FUNC1("     above.)\n\n");

  FUNC1("-crop WxH+X+Y = Perform lossless cropping on the input image prior to\n");
  FUNC1("     decompressing it.  X and Y specify the upper left corner of the cropping\n");
  FUNC1("     region, and W and H specify the width and height of the cropping region.\n");
  FUNC1("     X and Y must be evenly divible by the MCU block size (8x8 if the input\n");
  FUNC1("     image was compressed using no subsampling or grayscale, 16x8 if it was\n");
  FUNC1("     compressed using 4:2:2 subsampling, or 16x16 if it was compressed using\n");
  FUNC1("     4:2:0 subsampling.)\n\n");

  FUNC1("General Options\n");
  FUNC1("---------------\n\n");

  FUNC1("-fastupsample = Use the fastest chrominance upsampling algorithm available in\n");
  FUNC1("     the underlying codec.\n\n");

  FUNC1("-fastdct = Use the fastest DCT/IDCT algorithms available in the underlying\n");
  FUNC1("     codec.\n\n");

  FUNC1("-accuratedct = Use the most accurate DCT/IDCT algorithms available in the\n");
  FUNC1("     underlying codec.\n\n");

  FUNC0(1);
}