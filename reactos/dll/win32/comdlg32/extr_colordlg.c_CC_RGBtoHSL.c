
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WORD ;
typedef int COLORREF ;


 int GetBValue (int ) ;
 int GetGValue (int ) ;
 int GetRValue (int ) ;
 int max (int,int) ;
 int min (int,int) ;

__attribute__((used)) static int CC_RGBtoHSL(char c, COLORREF rgb)
{
 WORD maxi, mini, mmsum, mmdif, result = 0;
 int iresult = 0, r, g, b;

 r = GetRValue(rgb);
 g = GetGValue(rgb);
 b = GetBValue(rgb);

 maxi = max(r, b);
 maxi = max(maxi, g);
 mini = min(r, b);
 mini = min(mini, g);

 mmsum = maxi + mini;
 mmdif = maxi - mini;

 switch(c)
 {

  case 'L': mmsum *= 120;
    result = mmsum / 255;
    break;

  case 'S': if (!mmsum)
     result = 0;
    else
     if (!mini || maxi == 255)
      result = 240;
    else
    {
     result = mmdif * 240;
     result /= (mmsum > 255 ? 510 - mmsum : mmsum);
    }
    break;

  case 'H': if (!mmdif)
     result = 160;
    else
    {
     if (maxi == r)
     {
      iresult = 40 * (g - b);
      iresult /= (int) mmdif;
      if (iresult < 0)
       iresult += 240;
     }
     else
      if (maxi == g)
      {
       iresult = 40 * (b - r);
       iresult /= (int) mmdif;
       iresult += 80;
      }
      else
       if (maxi == b)
       {
        iresult = 40 * (r - g);
        iresult /= (int) mmdif;
        iresult += 160;
       }
     result = iresult;
    }
    break;
 }
 return result;
}
