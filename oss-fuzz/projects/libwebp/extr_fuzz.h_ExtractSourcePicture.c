
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int kImagesData ;
struct TYPE_4__ {int width; int height; int argb_stride; } ;
typedef TYPE_1__ WebPPicture ;


 size_t Extract (size_t const,int const*,size_t,int * const) ;
 int WebPPictureImportRGBA (TYPE_1__* const,int const* const,int) ;
 int const* kImgAlphaData ;
 int const kImgAlphaHeight ;
 int const kImgAlphaWidth ;
 int const* kImgGridData ;
 int const kImgGridHeight ;
 int const kImgGridWidth ;
 int const* kImgPeakData ;
 int const kImgPeakHeight ;
 int const kImgPeakWidth ;

__attribute__((used)) static int ExtractSourcePicture(WebPPicture* const pic,
                                const uint8_t data[], size_t size,
                                uint32_t* const bit_pos) {
  if (pic == ((void*)0)) return 0;


  const uint8_t* kImagesData[] = {
      kImgAlphaData,
      kImgGridData,
      kImgPeakData
  };
  const int kImagesWidth[] = {
      kImgAlphaWidth,
      kImgGridWidth,
      kImgPeakWidth
  };
  const int kImagesHeight[] = {
      kImgAlphaHeight,
      kImgGridHeight,
      kImgPeakHeight
  };
  const size_t kNbImages = sizeof(kImagesData) / sizeof(kImagesData[0]);
  const size_t image_index = Extract(kNbImages - 1, data, size, bit_pos);
  const uint8_t* const image_data = kImagesData[image_index];
  pic->width = kImagesWidth[image_index];
  pic->height = kImagesHeight[image_index];
  pic->argb_stride = pic->width * 4 * sizeof(uint8_t);


  return WebPPictureImportRGBA(pic, image_data, pic->argb_stride);
}
