
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t GLuint ;
typedef size_t GLubyte ;
typedef size_t GLint ;
typedef int GLboolean ;


 size_t ALPHACUT ;
 size_t BLUEWEIGHT ;
 size_t GL_COMPRESSED_RGBA_S3TC_DXT1_EXT ;
 int GL_FALSE ;
 int GL_TRUE ;
 size_t GREENWEIGHT ;
 size_t REDWEIGHT ;
 int fancybasecolorsearch (size_t*,size_t***,size_t**,size_t,size_t,size_t,int ) ;
 int storedxtencodedblock (size_t*,size_t***,size_t**,size_t,size_t,size_t,int ) ;

__attribute__((used)) static void encodedxtcolorblockfaster( GLubyte *blkaddr, GLubyte srccolors[4][4][4],
                         GLint numxpixels, GLint numypixels, GLuint type )
{
   GLubyte *bestcolor[2];
   GLubyte basecolors[2][3];
   GLubyte i, j;
   GLuint lowcv, highcv, testcv;
   GLboolean haveAlpha = GL_FALSE;

   lowcv = highcv = srccolors[0][0][0] * srccolors[0][0][0] * REDWEIGHT +
                          srccolors[0][0][1] * srccolors[0][0][1] * GREENWEIGHT +
                          srccolors[0][0][2] * srccolors[0][0][2] * BLUEWEIGHT;
   bestcolor[0] = bestcolor[1] = srccolors[0][0];
   for (j = 0; j < numypixels; j++) {
      for (i = 0; i < numxpixels; i++) {

         if ((type != GL_COMPRESSED_RGBA_S3TC_DXT1_EXT) || (srccolors[j][i][3] > ALPHACUT)) {
            testcv = srccolors[j][i][0] * srccolors[j][i][0] * REDWEIGHT +
                     srccolors[j][i][1] * srccolors[j][i][1] * GREENWEIGHT +
                     srccolors[j][i][2] * srccolors[j][i][2] * BLUEWEIGHT;
            if (testcv > highcv) {
               highcv = testcv;
               bestcolor[1] = srccolors[j][i];
            }
            else if (testcv < lowcv) {
               lowcv = testcv;
               bestcolor[0] = srccolors[j][i];
            }
         }
         else haveAlpha = GL_TRUE;
      }
   }

   for (j = 0; j < 2; j++) {
      for (i = 0; i < 3; i++) {
         basecolors[j][i] = bestcolor[j][i];
      }
   }
   bestcolor[0] = basecolors[0];
   bestcolor[1] = basecolors[1];


   fancybasecolorsearch(blkaddr, srccolors, bestcolor, numxpixels, numypixels, type, haveAlpha);

   storedxtencodedblock(blkaddr, srccolors, bestcolor, numxpixels, numypixels, type, haveAlpha);
}
