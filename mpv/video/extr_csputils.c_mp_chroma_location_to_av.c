
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum mp_chroma_location { ____Placeholder_mp_chroma_location } mp_chroma_location ;


 int AVCHROMA_LOC_CENTER ;
 int AVCHROMA_LOC_LEFT ;
 int AVCHROMA_LOC_UNSPECIFIED ;



int mp_chroma_location_to_av(enum mp_chroma_location mploc)
{
    switch (mploc) {
    case 128: return AVCHROMA_LOC_LEFT;
    case 129: return AVCHROMA_LOC_CENTER;
    default: return AVCHROMA_LOC_UNSPECIFIED;
    }
}
