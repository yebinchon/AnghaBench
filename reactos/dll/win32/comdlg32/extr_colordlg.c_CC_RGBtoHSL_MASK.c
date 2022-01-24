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
typedef  int WORD ;
typedef  int /*<<< orphan*/  COLORREF ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int,int) ; 
 int FUNC4 (int,int) ; 

__attribute__((used)) static int FUNC5(char c, COLORREF rgb)
{
 WORD maxi, mini, mmsum, mmdif, result = 0;
 int iresult = 0, r, g, b;

 r = FUNC2(rgb);
 g = FUNC1(rgb);
 b = FUNC0(rgb);

 maxi = FUNC3(r, b);
 maxi = FUNC3(maxi, g);
 mini = FUNC4(r, b);
 mini = FUNC4(mini, g);

 mmsum = maxi + mini;
 mmdif = maxi - mini;

 switch(c)
 {
  /* lum */
  case 'L': mmsum *= 120;              /* 0...61200=(255+255)*120 */
	   result = mmsum / 255;        /* 0...240 */
	   break;
  /* saturation */
  case 'S': if (!mmsum)
	    result = 0;
	   else
	    if (!mini || maxi == 255)
	     result = 240;
	   else
	   {
	    result = mmdif * 240;       /* 0...61200=255*240 */
	    result /= (mmsum > 255 ? 510 - mmsum : mmsum); /* 0..255 */
	   }
	   break;
  /* hue */
  case 'H': if (!mmdif)
	    result = 160;
	   else
	   {
	    if (maxi == r)
	    {
	     iresult = 40 * (g - b);       /* -10200 ... 10200 */
	     iresult /= (int) mmdif;    /* -40 .. 40 */
	     if (iresult < 0)
	      iresult += 240;          /* 0..40 and 200..240 */
	    }
	    else
	     if (maxi == g)
	     {
	      iresult = 40 * (b - r);
	      iresult /= (int) mmdif;
	      iresult += 80;           /* 40 .. 120 */
	     }
	     else
	      if (maxi == b)
	      {
	       iresult = 40 * (r - g);
	       iresult /= (int) mmdif;
	       iresult += 160;         /* 120 .. 200 */
	      }
	    result = iresult;
	   }
	   break;
 }
 return result;    /* is this integer arithmetic precise enough ? */
}