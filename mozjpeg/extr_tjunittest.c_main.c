
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TJSAMP_411 ;
 int TJSAMP_420 ;
 int TJSAMP_422 ;
 int TJSAMP_440 ;
 int TJSAMP_444 ;
 int TJSAMP_GRAY ;
 int _3byteFormats ;
 int _4byteFormats ;
 int _onlyGray ;
 int _onlyRGB ;
 int alloc ;
 int bmpTest () ;
 int bufSizeTest () ;
 int doTest (int,int,int ,int,int ,char*) ;
 int doYUV ;
 int exitStatus ;
 int pad ;
 int printf (char*) ;
 int srand (unsigned int) ;
 int strcasecmp (char*,char*) ;
 scalar_t__ time (int *) ;
 int usage (char*) ;

int main(int argc, char *argv[])
{
  int i, num4bf = 5;




  if (argc > 1) {
    for (i = 1; i < argc; i++) {
      if (!strcasecmp(argv[i], "-yuv")) doYUV = 1;
      else if (!strcasecmp(argv[i], "-noyuvpad")) pad = 1;
      else if (!strcasecmp(argv[i], "-alloc")) alloc = 1;
      else if (!strcasecmp(argv[i], "-bmp")) return bmpTest();
      else usage(argv[0]);
    }
  }
  if (alloc) printf("Testing automatic buffer allocation\n");
  if (doYUV) num4bf = 4;
  doTest(35, 39, _3byteFormats, 2, TJSAMP_444, "test");
  doTest(39, 41, _4byteFormats, num4bf, TJSAMP_444, "test");
  doTest(41, 35, _3byteFormats, 2, TJSAMP_422, "test");
  doTest(35, 39, _4byteFormats, num4bf, TJSAMP_422, "test");
  doTest(39, 41, _3byteFormats, 2, TJSAMP_420, "test");
  doTest(41, 35, _4byteFormats, num4bf, TJSAMP_420, "test");
  doTest(35, 39, _3byteFormats, 2, TJSAMP_440, "test");
  doTest(39, 41, _4byteFormats, num4bf, TJSAMP_440, "test");
  doTest(41, 35, _3byteFormats, 2, TJSAMP_411, "test");
  doTest(35, 39, _4byteFormats, num4bf, TJSAMP_411, "test");
  doTest(39, 41, _onlyGray, 1, TJSAMP_GRAY, "test");
  doTest(41, 35, _3byteFormats, 2, TJSAMP_GRAY, "test");
  doTest(35, 39, _4byteFormats, 4, TJSAMP_GRAY, "test");
  bufSizeTest();
  if (doYUV) {
    printf("\n--------------------\n\n");
    doTest(48, 48, _onlyRGB, 1, TJSAMP_444, "test_yuv0");
    doTest(48, 48, _onlyRGB, 1, TJSAMP_422, "test_yuv0");
    doTest(48, 48, _onlyRGB, 1, TJSAMP_420, "test_yuv0");
    doTest(48, 48, _onlyRGB, 1, TJSAMP_440, "test_yuv0");
    doTest(48, 48, _onlyRGB, 1, TJSAMP_411, "test_yuv0");
    doTest(48, 48, _onlyRGB, 1, TJSAMP_GRAY, "test_yuv0");
    doTest(48, 48, _onlyGray, 1, TJSAMP_GRAY, "test_yuv0");
  }

  return exitStatus;
}
