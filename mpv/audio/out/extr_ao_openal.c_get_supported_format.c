
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum af_format { ____Placeholder_af_format } af_format ;
typedef int ALchar ;






 int AL_FALSE ;
 int AL_RENDERER ;
 int AL_TRUE ;
 int alGetEnumValue (int *) ;
 int alGetString (int ) ;
 int alIsExtensionPresent (int *) ;
 int * strstr (int ,char*) ;

__attribute__((used)) static enum af_format get_supported_format(int format)
{
    switch (format) {
    case 128:
        if (alGetEnumValue((ALchar*)"AL_FORMAT_MONO8"))
            return 128;
        break;

    case 130:
        if (alGetEnumValue((ALchar*)"AL_FORMAT_MONO16"))
            return 130;
        break;

    case 129:
        if (strstr(alGetString(AL_RENDERER), "X-Fi") != ((void*)0))
            return 129;
        break;

    case 131:
        if (alIsExtensionPresent((ALchar*)"AL_EXT_float32") == AL_TRUE)
            return 131;
        break;
    }
    return AL_FALSE;
}
