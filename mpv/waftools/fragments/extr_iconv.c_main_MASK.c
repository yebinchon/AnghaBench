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
typedef  int /*<<< orphan*/  iconv_t ;

/* Variables and functions */
 int /*<<< orphan*/  INBUFSIZE ; 
 size_t OUTBUFSIZE ; 
 size_t FUNC0 (int /*<<< orphan*/ ,char**,size_t*,char**,size_t*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 char* inbuffer ; 
 char* outbuffer ; 
 size_t FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,size_t) ; 

int FUNC5(void) {
  size_t numread;
  iconv_t icdsc;
  char *tocode="UTF-8";
  char *fromcode="cp1250";
  if ((icdsc = FUNC2(tocode, fromcode)) != (iconv_t)(-1)) {
    while ((numread = FUNC3(0, inbuffer, INBUFSIZE))) {
      char *iptr=inbuffer;
      char *optr=outbuffer;
      size_t inleft=numread;
      size_t outleft=OUTBUFSIZE;
      if (FUNC0(icdsc, &iptr, &inleft, &optr, &outleft)
          != (size_t)(-1)) {
        FUNC4(1, outbuffer, OUTBUFSIZE - outleft);
      }
    }
    if (FUNC1(icdsc) == -1)
      ;
  }
  return 0;
}