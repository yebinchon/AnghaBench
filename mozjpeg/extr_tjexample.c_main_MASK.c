#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int w; int h; scalar_t__ x; scalar_t__ y; } ;
struct TYPE_10__ {scalar_t__ op; int /*<<< orphan*/  options; int /*<<< orphan*/ * customFilter; TYPE_1__ r; } ;
typedef  TYPE_2__ tjtransform ;
struct TYPE_11__ {int member_0; int member_1; int num; int denom; } ;
typedef  TYPE_3__ tjscalingfactor ;
typedef  int /*<<< orphan*/ * tjhandle ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int DEFAULT_QUALITY ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int TJFLAG_ACCURATEDCT ; 
 int TJFLAG_FASTDCT ; 
 int TJFLAG_FASTUPSAMPLE ; 
 int TJPF_BGRX ; 
 int TJPF_GRAY ; 
 int TJPF_UNKNOWN ; 
 int TJSAMP_420 ; 
 int TJSAMP_422 ; 
 int TJSAMP_444 ; 
 int TJSAMP_GRAY ; 
 int FUNC0 (int,TYPE_3__) ; 
 int /*<<< orphan*/  TJXOPT_CROP ; 
 int /*<<< orphan*/  TJXOPT_GRAY ; 
 int /*<<< orphan*/  TJXOPT_TRIM ; 
 scalar_t__ TJXOP_HFLIP ; 
 scalar_t__ TJXOP_NONE ; 
 scalar_t__ TJXOP_ROT180 ; 
 scalar_t__ TJXOP_ROT270 ; 
 scalar_t__ TJXOP_ROT90 ; 
 scalar_t__ TJXOP_TRANSPOSE ; 
 scalar_t__ TJXOP_TRANSVERSE ; 
 scalar_t__ TJXOP_VFLIP ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (char*) ; 
 char** colorspaceName ; 
 int /*<<< orphan*/ * customFilter ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (char*,char*) ; 
 int FUNC7 (unsigned char*,unsigned long,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 long FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (unsigned char*,unsigned long,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int numScalingFactors ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 TYPE_3__* scalingFactors ; 
 int FUNC13 (char*,char*,int*,int*,...) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*) ; 
 int FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (char*,char*,int) ; 
 char* FUNC17 (char*,char) ; 
 char** subsampName ; 
 scalar_t__ FUNC18 (int) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ *,unsigned char*,int,int /*<<< orphan*/ ,int,int,unsigned char**,unsigned long*,int,int,int) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ *,unsigned char*,unsigned long,unsigned char*,int,int /*<<< orphan*/ ,int,int,int) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ *,unsigned char*,unsigned long,int*,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (unsigned char*) ; 
 TYPE_3__* FUNC24 (int*) ; 
 int /*<<< orphan*/ * FUNC25 () ; 
 int /*<<< orphan*/ * FUNC26 () ; 
 int /*<<< orphan*/ * FUNC27 () ; 
 unsigned char* FUNC28 (char*,int*,int,int*,int*,int /*<<< orphan*/ ) ; 
 int* tjPixelSize ; 
 scalar_t__ FUNC29 (char*,unsigned char*,int,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC30 (int /*<<< orphan*/ *,unsigned char*,unsigned long,int,unsigned char**,unsigned long*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC31 (char*) ; 

int FUNC32(int argc, char **argv)
{
  tjscalingfactor scalingFactor = { 1, 1 };
  int outSubsamp = -1, outQual = -1;
  tjtransform xform;
  int flags = 0;
  int width, height;
  char *inFormat, *outFormat;
  FILE *jpegFile = NULL;
  unsigned char *imgBuf = NULL, *jpegBuf = NULL;
  int retval = 0, i, pixelFormat = TJPF_UNKNOWN;
  tjhandle tjInstance = NULL;

  if ((scalingFactors = FUNC24(&numScalingFactors)) == NULL)
    FUNC2("getting scaling factors");
  FUNC11(&xform, 0, sizeof(tjtransform));

  if (argc < 3)
    FUNC31(argv[0]);

  /* Parse arguments. */
  for (i = 3; i < argc; i++) {
    if (!FUNC16(argv[i], "-sc", 3) && i < argc - 1) {
      int match = 0, temp1 = 0, temp2 = 0, j;

      if (FUNC13(argv[++i], "%d/%d", &temp1, &temp2) < 2)
        FUNC31(argv[0]);
      for (j = 0; j < numScalingFactors; j++) {
        if ((double)temp1 / (double)temp2 == (double)scalingFactors[j].num /
                                             (double)scalingFactors[j].denom) {
          scalingFactor = scalingFactors[j];
          match = 1;
          break;
        }
      }
      if (match != 1)
        FUNC31(argv[0]);
    } else if (!FUNC16(argv[i], "-su", 3) && i < argc - 1) {
      i++;
      if (!FUNC16(argv[i], "g", 1))
        outSubsamp = TJSAMP_GRAY;
      else if (!FUNC14(argv[i], "444"))
        outSubsamp = TJSAMP_444;
      else if (!FUNC14(argv[i], "422"))
        outSubsamp = TJSAMP_422;
      else if (!FUNC14(argv[i], "420"))
        outSubsamp = TJSAMP_420;
      else
        FUNC31(argv[0]);
    } else if (!FUNC16(argv[i], "-q", 2) && i < argc - 1) {
      outQual = FUNC4(argv[++i]);
      if (outQual < 1 || outQual > 100)
        FUNC31(argv[0]);
    } else if (!FUNC16(argv[i], "-g", 2))
      xform.options |= TJXOPT_GRAY;
    else if (!FUNC14(argv[i], "-hflip"))
      xform.op = TJXOP_HFLIP;
    else if (!FUNC14(argv[i], "-vflip"))
      xform.op = TJXOP_VFLIP;
    else if (!FUNC14(argv[i], "-transpose"))
      xform.op = TJXOP_TRANSPOSE;
    else if (!FUNC14(argv[i], "-transverse"))
      xform.op = TJXOP_TRANSVERSE;
    else if (!FUNC14(argv[i], "-rot90"))
      xform.op = TJXOP_ROT90;
    else if (!FUNC14(argv[i], "-rot180"))
      xform.op = TJXOP_ROT180;
    else if (!FUNC14(argv[i], "-rot270"))
      xform.op = TJXOP_ROT270;
    else if (!FUNC14(argv[i], "-custom"))
      xform.customFilter = customFilter;
    else if (!FUNC16(argv[i], "-c", 2) && i < argc - 1) {
      if (FUNC13(argv[++i], "%dx%d+%d+%d", &xform.r.w, &xform.r.h, &xform.r.x,
                 &xform.r.y) < 4 ||
          xform.r.x < 0 || xform.r.y < 0 || xform.r.w < 1 || xform.r.h < 1)
        FUNC31(argv[0]);
      xform.options |= TJXOPT_CROP;
    } else if (!FUNC14(argv[i], "-fastupsample")) {
      FUNC12("Using fast upsampling code\n");
      flags |= TJFLAG_FASTUPSAMPLE;
    } else if (!FUNC14(argv[i], "-fastdct")) {
      FUNC12("Using fastest DCT/IDCT algorithm\n");
      flags |= TJFLAG_FASTDCT;
    } else if (!FUNC14(argv[i], "-accuratedct")) {
      FUNC12("Using most accurate DCT/IDCT algorithm\n");
      flags |= TJFLAG_ACCURATEDCT;
    } else FUNC31(argv[0]);
  }

  /* Determine input and output image formats based on file extensions. */
  inFormat = FUNC17(argv[1], '.');
  outFormat = FUNC17(argv[2], '.');
  if (inFormat == NULL || outFormat == NULL || FUNC15(inFormat) < 2 ||
      FUNC15(outFormat) < 2)
    FUNC31(argv[0]);
  inFormat = &inFormat[1];
  outFormat = &outFormat[1];

  if (!FUNC14(inFormat, "jpg")) {
    /* Input image is a JPEG image.  Decompress and/or transform it. */
    long size;
    int inSubsamp, inColorspace;
    int doTransform = (xform.op != TJXOP_NONE || xform.options != 0 ||
                       xform.customFilter != NULL);
    unsigned long jpegSize;

    /* Read the JPEG file into memory. */
    if ((jpegFile = FUNC6(argv[1], "rb")) == NULL)
      FUNC3("opening input file");
    if (FUNC8(jpegFile, 0, SEEK_END) < 0 || ((size = FUNC9(jpegFile)) < 0) ||
        FUNC8(jpegFile, 0, SEEK_SET) < 0)
      FUNC3("determining input file size");
    if (size == 0)
      FUNC1("determining input file size", "Input file contains no data");
    jpegSize = (unsigned long)size;
    if ((jpegBuf = (unsigned char *)FUNC18(jpegSize)) == NULL)
      FUNC3("allocating JPEG buffer");
    if (FUNC7(jpegBuf, jpegSize, 1, jpegFile) < 1)
      FUNC3("reading input file");
    FUNC5(jpegFile);  jpegFile = NULL;

    if (doTransform) {
      /* Transform it. */
      unsigned char *dstBuf = NULL;  /* Dynamically allocate the JPEG buffer */
      unsigned long dstSize = 0;

      if ((tjInstance = FUNC27()) == NULL)
        FUNC2("initializing transformer");
      xform.options |= TJXOPT_TRIM;
      if (FUNC30(tjInstance, jpegBuf, jpegSize, 1, &dstBuf, &dstSize,
                      &xform, flags) < 0)
        FUNC2("transforming input image");
      FUNC23(jpegBuf);
      jpegBuf = dstBuf;
      jpegSize = dstSize;
    } else {
      if ((tjInstance = FUNC26()) == NULL)
        FUNC2("initializing decompressor");
    }

    if (FUNC21(tjInstance, jpegBuf, jpegSize, &width, &height,
                            &inSubsamp, &inColorspace) < 0)
      FUNC2("reading JPEG header");

    FUNC12("%s Image:  %d x %d pixels, %s subsampling, %s colorspace\n",
           (doTransform ? "Transformed" : "Input"), width, height,
           subsampName[inSubsamp], colorspaceName[inColorspace]);

    if (!FUNC14(outFormat, "jpg") && doTransform &&
        scalingFactor.num == 1 && scalingFactor.denom == 1 && outSubsamp < 0 &&
        outQual < 0) {
      /* Input image has been transformed, and no re-compression options
         have been selected.  Write the transformed image to disk and exit. */
      if ((jpegFile = FUNC6(argv[2], "wb")) == NULL)
        FUNC3("opening output file");
      if (FUNC10(jpegBuf, jpegSize, 1, jpegFile) < 1)
        FUNC3("writing output file");
      FUNC5(jpegFile);  jpegFile = NULL;
      goto bailout;
    }

    /* Scaling and/or a non-JPEG output image format and/or compression options
       have been selected, so we need to decompress the input/transformed
       image. */
    width = FUNC0(width, scalingFactor);
    height = FUNC0(height, scalingFactor);
    if (outSubsamp < 0)
      outSubsamp = inSubsamp;

    pixelFormat = TJPF_BGRX;
    if ((imgBuf = (unsigned char *)FUNC18(width * height *
                                           tjPixelSize[pixelFormat])) == NULL)
      FUNC3("allocating uncompressed image buffer");

    if (FUNC20(tjInstance, jpegBuf, jpegSize, imgBuf, width, 0, height,
                      pixelFormat, flags) < 0)
      FUNC2("decompressing JPEG image");
    FUNC23(jpegBuf);  jpegBuf = NULL;
    FUNC22(tjInstance);  tjInstance = NULL;
  } else {
    /* Input image is not a JPEG image.  Load it into memory. */
    if ((imgBuf = FUNC28(argv[1], &width, 1, &height, &pixelFormat,
                              0)) == NULL)
      FUNC2("loading input image");
    if (outSubsamp < 0) {
      if (pixelFormat == TJPF_GRAY)
        outSubsamp = TJSAMP_GRAY;
      else
        outSubsamp = TJSAMP_444;
    }
    FUNC12("Input Image:  %d x %d pixels\n", width, height);
  }

  FUNC12("Output Image (%s):  %d x %d pixels", outFormat, width, height);

  if (!FUNC14(outFormat, "jpg")) {
    /* Output image format is JPEG.  Compress the uncompressed image. */
    unsigned char *jpegBuf = NULL;  /* Dynamically allocate the JPEG buffer */
    unsigned long jpegSize = 0;

    if (outQual < 0)
      outQual = DEFAULT_QUALITY;
    FUNC12(", %s subsampling, quality = %d\n", subsampName[outSubsamp],
           outQual);

    if ((tjInstance = FUNC25()) == NULL)
      FUNC2("initializing compressor");
    if (FUNC19(tjInstance, imgBuf, width, 0, height, pixelFormat,
                    &jpegBuf, &jpegSize, outSubsamp, outQual, flags) < 0)
      FUNC2("compressing image");
    FUNC22(tjInstance);  tjInstance = NULL;

    /* Write the JPEG image to disk. */
    if ((jpegFile = FUNC6(argv[2], "wb")) == NULL)
      FUNC3("opening output file");
    if (FUNC10(jpegBuf, jpegSize, 1, jpegFile) < 1)
      FUNC3("writing output file");
    FUNC22(tjInstance);  tjInstance = NULL;
    FUNC5(jpegFile);  jpegFile = NULL;
    FUNC23(jpegBuf);  jpegBuf = NULL;
  } else {
    /* Output image format is not JPEG.  Save the uncompressed image
       directly to disk. */
    FUNC12("\n");
    if (FUNC29(argv[2], imgBuf, width, 0, height, pixelFormat, 0) < 0)
      FUNC2("saving output image");
  }

bailout:
  if (imgBuf) FUNC23(imgBuf);
  if (tjInstance) FUNC22(tjInstance);
  if (jpegBuf) FUNC23(jpegBuf);
  if (jpegFile) FUNC5(jpegFile);
  return retval;
}