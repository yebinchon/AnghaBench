
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zimg_chroma_location_e ;
typedef enum mp_chroma_location { ____Placeholder_mp_chroma_location } mp_chroma_location ;




 int ZIMG_CHROMA_CENTER ;
 int ZIMG_CHROMA_LEFT ;

__attribute__((used)) static zimg_chroma_location_e mp_to_z_chroma(enum mp_chroma_location cl)
{
    switch (cl) {
    case 128: return ZIMG_CHROMA_LEFT;
    case 129: return ZIMG_CHROMA_CENTER;
    default: return ZIMG_CHROMA_LEFT;
    }
}
