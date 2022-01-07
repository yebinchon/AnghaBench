
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum audio_format { ____Placeholder_audio_format } audio_format ;


 int AUDIO_CONV (char*,char*,int) ;
 int AUDIO_FORMAT_16BIT ;
 int AUDIO_FORMAT_32BIT ;
 int AUDIO_FORMAT_FLOAT ;
 int AUDIO_TEST (char*,int) ;

__attribute__((used)) static enum audio_format convert_vlc_audio_format(char *format)
{
 if (chroma_is(format, "S16N")) return AUDIO_FORMAT_16BIT;
 if (chroma_is(format, "S32N")) return AUDIO_FORMAT_32BIT;
 if (chroma_is(format, "FL32")) return AUDIO_FORMAT_FLOAT;

 do { if (chroma_is(format, "U16N")) { *(uint32_t *)format = *(uint32_t *)"S16N"; return AUDIO_FORMAT_16BIT; } } while (0);
 do { if (chroma_is(format, "U32N")) { *(uint32_t *)format = *(uint32_t *)"S32N"; return AUDIO_FORMAT_32BIT; } } while (0);
 do { if (chroma_is(format, "S24N")) { *(uint32_t *)format = *(uint32_t *)"S32N"; return AUDIO_FORMAT_32BIT; } } while (0);
 do { if (chroma_is(format, "U24N")) { *(uint32_t *)format = *(uint32_t *)"S32N"; return AUDIO_FORMAT_32BIT; } } while (0);
 do { if (chroma_is(format, "FL64")) { *(uint32_t *)format = *(uint32_t *)"FL32"; return AUDIO_FORMAT_FLOAT; } } while (0);

 do { if (chroma_is(format, "S16I")) { *(uint32_t *)format = *(uint32_t *)"S16N"; return AUDIO_FORMAT_16BIT; } } while (0);
 do { if (chroma_is(format, "U16I")) { *(uint32_t *)format = *(uint32_t *)"S16N"; return AUDIO_FORMAT_16BIT; } } while (0);
 do { if (chroma_is(format, "S24I")) { *(uint32_t *)format = *(uint32_t *)"S32N"; return AUDIO_FORMAT_32BIT; } } while (0);
 do { if (chroma_is(format, "U24I")) { *(uint32_t *)format = *(uint32_t *)"S32N"; return AUDIO_FORMAT_32BIT; } } while (0);
 do { if (chroma_is(format, "S32I")) { *(uint32_t *)format = *(uint32_t *)"S32N"; return AUDIO_FORMAT_32BIT; } } while (0);
 do { if (chroma_is(format, "U32I")) { *(uint32_t *)format = *(uint32_t *)"S32N"; return AUDIO_FORMAT_32BIT; } } while (0);



 *(uint32_t *)format = *(uint32_t *)"FL32";
 return AUDIO_FORMAT_FLOAT;
}
