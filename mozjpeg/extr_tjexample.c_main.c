
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int w; int h; scalar_t__ x; scalar_t__ y; } ;
struct TYPE_10__ {scalar_t__ op; int options; int * customFilter; TYPE_1__ r; } ;
typedef TYPE_2__ tjtransform ;
struct TYPE_11__ {int member_0; int member_1; int num; int denom; } ;
typedef TYPE_3__ tjscalingfactor ;
typedef int * tjhandle ;
typedef int FILE ;


 int DEFAULT_QUALITY ;
 int SEEK_END ;
 int SEEK_SET ;
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
 int TJSCALED (int,TYPE_3__) ;
 int TJXOPT_CROP ;
 int TJXOPT_GRAY ;
 int TJXOPT_TRIM ;
 scalar_t__ TJXOP_HFLIP ;
 scalar_t__ TJXOP_NONE ;
 scalar_t__ TJXOP_ROT180 ;
 scalar_t__ TJXOP_ROT270 ;
 scalar_t__ TJXOP_ROT90 ;
 scalar_t__ TJXOP_TRANSPOSE ;
 scalar_t__ TJXOP_TRANSVERSE ;
 scalar_t__ TJXOP_VFLIP ;
 int _throw (char*,char*) ;
 int _throwtj (char*) ;
 int _throwunix (char*) ;
 int atoi (char*) ;
 char** colorspaceName ;
 int * customFilter ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fread (unsigned char*,unsigned long,int,int *) ;
 scalar_t__ fseek (int *,int ,int ) ;
 long ftell (int *) ;
 int fwrite (unsigned char*,unsigned long,int,int *) ;
 int memset (TYPE_2__*,int ,int) ;
 int numScalingFactors ;
 int printf (char*,...) ;
 TYPE_3__* scalingFactors ;
 int sscanf (char*,char*,int*,int*,...) ;
 int strcasecmp (char*,char*) ;
 int strlen (char*) ;
 int strncasecmp (char*,char*,int) ;
 char* strrchr (char*,char) ;
 char** subsampName ;
 scalar_t__ tjAlloc (int) ;
 scalar_t__ tjCompress2 (int *,unsigned char*,int,int ,int,int,unsigned char**,unsigned long*,int,int,int) ;
 scalar_t__ tjDecompress2 (int *,unsigned char*,unsigned long,unsigned char*,int,int ,int,int,int) ;
 scalar_t__ tjDecompressHeader3 (int *,unsigned char*,unsigned long,int*,int*,int*,int*) ;
 int tjDestroy (int *) ;
 int tjFree (unsigned char*) ;
 TYPE_3__* tjGetScalingFactors (int*) ;
 int * tjInitCompress () ;
 int * tjInitDecompress () ;
 int * tjInitTransform () ;
 unsigned char* tjLoadImage (char*,int*,int,int*,int*,int ) ;
 int* tjPixelSize ;
 scalar_t__ tjSaveImage (char*,unsigned char*,int,int ,int,int,int ) ;
 scalar_t__ tjTransform (int *,unsigned char*,unsigned long,int,unsigned char**,unsigned long*,TYPE_2__*,int) ;
 int usage (char*) ;

int main(int argc, char **argv)
{
  tjscalingfactor scalingFactor = { 1, 1 };
  int outSubsamp = -1, outQual = -1;
  tjtransform xform;
  int flags = 0;
  int width, height;
  char *inFormat, *outFormat;
  FILE *jpegFile = ((void*)0);
  unsigned char *imgBuf = ((void*)0), *jpegBuf = ((void*)0);
  int retval = 0, i, pixelFormat = TJPF_UNKNOWN;
  tjhandle tjInstance = ((void*)0);

  if ((scalingFactors = tjGetScalingFactors(&numScalingFactors)) == ((void*)0))
    _throwtj("getting scaling factors");
  memset(&xform, 0, sizeof(tjtransform));

  if (argc < 3)
    usage(argv[0]);


  for (i = 3; i < argc; i++) {
    if (!strncasecmp(argv[i], "-sc", 3) && i < argc - 1) {
      int match = 0, temp1 = 0, temp2 = 0, j;

      if (sscanf(argv[++i], "%d/%d", &temp1, &temp2) < 2)
        usage(argv[0]);
      for (j = 0; j < numScalingFactors; j++) {
        if ((double)temp1 / (double)temp2 == (double)scalingFactors[j].num /
                                             (double)scalingFactors[j].denom) {
          scalingFactor = scalingFactors[j];
          match = 1;
          break;
        }
      }
      if (match != 1)
        usage(argv[0]);
    } else if (!strncasecmp(argv[i], "-su", 3) && i < argc - 1) {
      i++;
      if (!strncasecmp(argv[i], "g", 1))
        outSubsamp = TJSAMP_GRAY;
      else if (!strcasecmp(argv[i], "444"))
        outSubsamp = TJSAMP_444;
      else if (!strcasecmp(argv[i], "422"))
        outSubsamp = TJSAMP_422;
      else if (!strcasecmp(argv[i], "420"))
        outSubsamp = TJSAMP_420;
      else
        usage(argv[0]);
    } else if (!strncasecmp(argv[i], "-q", 2) && i < argc - 1) {
      outQual = atoi(argv[++i]);
      if (outQual < 1 || outQual > 100)
        usage(argv[0]);
    } else if (!strncasecmp(argv[i], "-g", 2))
      xform.options |= TJXOPT_GRAY;
    else if (!strcasecmp(argv[i], "-hflip"))
      xform.op = TJXOP_HFLIP;
    else if (!strcasecmp(argv[i], "-vflip"))
      xform.op = TJXOP_VFLIP;
    else if (!strcasecmp(argv[i], "-transpose"))
      xform.op = TJXOP_TRANSPOSE;
    else if (!strcasecmp(argv[i], "-transverse"))
      xform.op = TJXOP_TRANSVERSE;
    else if (!strcasecmp(argv[i], "-rot90"))
      xform.op = TJXOP_ROT90;
    else if (!strcasecmp(argv[i], "-rot180"))
      xform.op = TJXOP_ROT180;
    else if (!strcasecmp(argv[i], "-rot270"))
      xform.op = TJXOP_ROT270;
    else if (!strcasecmp(argv[i], "-custom"))
      xform.customFilter = customFilter;
    else if (!strncasecmp(argv[i], "-c", 2) && i < argc - 1) {
      if (sscanf(argv[++i], "%dx%d+%d+%d", &xform.r.w, &xform.r.h, &xform.r.x,
                 &xform.r.y) < 4 ||
          xform.r.x < 0 || xform.r.y < 0 || xform.r.w < 1 || xform.r.h < 1)
        usage(argv[0]);
      xform.options |= TJXOPT_CROP;
    } else if (!strcasecmp(argv[i], "-fastupsample")) {
      printf("Using fast upsampling code\n");
      flags |= TJFLAG_FASTUPSAMPLE;
    } else if (!strcasecmp(argv[i], "-fastdct")) {
      printf("Using fastest DCT/IDCT algorithm\n");
      flags |= TJFLAG_FASTDCT;
    } else if (!strcasecmp(argv[i], "-accuratedct")) {
      printf("Using most accurate DCT/IDCT algorithm\n");
      flags |= TJFLAG_ACCURATEDCT;
    } else usage(argv[0]);
  }


  inFormat = strrchr(argv[1], '.');
  outFormat = strrchr(argv[2], '.');
  if (inFormat == ((void*)0) || outFormat == ((void*)0) || strlen(inFormat) < 2 ||
      strlen(outFormat) < 2)
    usage(argv[0]);
  inFormat = &inFormat[1];
  outFormat = &outFormat[1];

  if (!strcasecmp(inFormat, "jpg")) {

    long size;
    int inSubsamp, inColorspace;
    int doTransform = (xform.op != TJXOP_NONE || xform.options != 0 ||
                       xform.customFilter != ((void*)0));
    unsigned long jpegSize;


    if ((jpegFile = fopen(argv[1], "rb")) == ((void*)0))
      _throwunix("opening input file");
    if (fseek(jpegFile, 0, SEEK_END) < 0 || ((size = ftell(jpegFile)) < 0) ||
        fseek(jpegFile, 0, SEEK_SET) < 0)
      _throwunix("determining input file size");
    if (size == 0)
      _throw("determining input file size", "Input file contains no data");
    jpegSize = (unsigned long)size;
    if ((jpegBuf = (unsigned char *)tjAlloc(jpegSize)) == ((void*)0))
      _throwunix("allocating JPEG buffer");
    if (fread(jpegBuf, jpegSize, 1, jpegFile) < 1)
      _throwunix("reading input file");
    fclose(jpegFile); jpegFile = ((void*)0);

    if (doTransform) {

      unsigned char *dstBuf = ((void*)0);
      unsigned long dstSize = 0;

      if ((tjInstance = tjInitTransform()) == ((void*)0))
        _throwtj("initializing transformer");
      xform.options |= TJXOPT_TRIM;
      if (tjTransform(tjInstance, jpegBuf, jpegSize, 1, &dstBuf, &dstSize,
                      &xform, flags) < 0)
        _throwtj("transforming input image");
      tjFree(jpegBuf);
      jpegBuf = dstBuf;
      jpegSize = dstSize;
    } else {
      if ((tjInstance = tjInitDecompress()) == ((void*)0))
        _throwtj("initializing decompressor");
    }

    if (tjDecompressHeader3(tjInstance, jpegBuf, jpegSize, &width, &height,
                            &inSubsamp, &inColorspace) < 0)
      _throwtj("reading JPEG header");

    printf("%s Image:  %d x %d pixels, %s subsampling, %s colorspace\n",
           (doTransform ? "Transformed" : "Input"), width, height,
           subsampName[inSubsamp], colorspaceName[inColorspace]);

    if (!strcasecmp(outFormat, "jpg") && doTransform &&
        scalingFactor.num == 1 && scalingFactor.denom == 1 && outSubsamp < 0 &&
        outQual < 0) {


      if ((jpegFile = fopen(argv[2], "wb")) == ((void*)0))
        _throwunix("opening output file");
      if (fwrite(jpegBuf, jpegSize, 1, jpegFile) < 1)
        _throwunix("writing output file");
      fclose(jpegFile); jpegFile = ((void*)0);
      goto bailout;
    }




    width = TJSCALED(width, scalingFactor);
    height = TJSCALED(height, scalingFactor);
    if (outSubsamp < 0)
      outSubsamp = inSubsamp;

    pixelFormat = TJPF_BGRX;
    if ((imgBuf = (unsigned char *)tjAlloc(width * height *
                                           tjPixelSize[pixelFormat])) == ((void*)0))
      _throwunix("allocating uncompressed image buffer");

    if (tjDecompress2(tjInstance, jpegBuf, jpegSize, imgBuf, width, 0, height,
                      pixelFormat, flags) < 0)
      _throwtj("decompressing JPEG image");
    tjFree(jpegBuf); jpegBuf = ((void*)0);
    tjDestroy(tjInstance); tjInstance = ((void*)0);
  } else {

    if ((imgBuf = tjLoadImage(argv[1], &width, 1, &height, &pixelFormat,
                              0)) == ((void*)0))
      _throwtj("loading input image");
    if (outSubsamp < 0) {
      if (pixelFormat == TJPF_GRAY)
        outSubsamp = TJSAMP_GRAY;
      else
        outSubsamp = TJSAMP_444;
    }
    printf("Input Image:  %d x %d pixels\n", width, height);
  }

  printf("Output Image (%s):  %d x %d pixels", outFormat, width, height);

  if (!strcasecmp(outFormat, "jpg")) {

    unsigned char *jpegBuf = ((void*)0);
    unsigned long jpegSize = 0;

    if (outQual < 0)
      outQual = DEFAULT_QUALITY;
    printf(", %s subsampling, quality = %d\n", subsampName[outSubsamp],
           outQual);

    if ((tjInstance = tjInitCompress()) == ((void*)0))
      _throwtj("initializing compressor");
    if (tjCompress2(tjInstance, imgBuf, width, 0, height, pixelFormat,
                    &jpegBuf, &jpegSize, outSubsamp, outQual, flags) < 0)
      _throwtj("compressing image");
    tjDestroy(tjInstance); tjInstance = ((void*)0);


    if ((jpegFile = fopen(argv[2], "wb")) == ((void*)0))
      _throwunix("opening output file");
    if (fwrite(jpegBuf, jpegSize, 1, jpegFile) < 1)
      _throwunix("writing output file");
    tjDestroy(tjInstance); tjInstance = ((void*)0);
    fclose(jpegFile); jpegFile = ((void*)0);
    tjFree(jpegBuf); jpegBuf = ((void*)0);
  } else {


    printf("\n");
    if (tjSaveImage(argv[2], imgBuf, width, 0, height, pixelFormat, 0) < 0)
      _throwtj("saving output image");
  }

bailout:
  if (imgBuf) tjFree(imgBuf);
  if (tjInstance) tjDestroy(tjInstance);
  if (jpegBuf) tjFree(jpegBuf);
  if (jpegFile) fclose(jpegFile);
  return retval;
}
