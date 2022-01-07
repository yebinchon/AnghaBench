
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum mp_chroma_location { ____Placeholder_mp_chroma_location } mp_chroma_location ;




 int MP_CHROMA_AUTO ;
 int MP_CHROMA_CENTER ;
 int MP_CHROMA_LEFT ;

enum mp_chroma_location avchroma_location_to_mp(int avloc)
{
    switch (avloc) {
    case 128: return MP_CHROMA_LEFT;
    case 129: return MP_CHROMA_CENTER;
    default: return MP_CHROMA_AUTO;
    }
}
