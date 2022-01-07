
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ GLADWGLhdc ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int strlen (char const*) ;
 char* strstr (char const*,char const*) ;
 char* wglGetExtensionsStringARB (scalar_t__) ;
 char* wglGetExtensionsStringEXT () ;

__attribute__((used)) static int has_ext(const char *ext) {
    const char *terminator;
    const char *loc;
    const char *extensions;

    if(wglGetExtensionsStringEXT == ((void*)0) && wglGetExtensionsStringARB == ((void*)0))
        return 0;

    if(wglGetExtensionsStringARB == ((void*)0) || GLADWGLhdc == INVALID_HANDLE_VALUE)
        extensions = wglGetExtensionsStringEXT();
    else
        extensions = wglGetExtensionsStringARB(GLADWGLhdc);

    if(extensions == ((void*)0) || ext == ((void*)0))
        return 0;

    while(1) {
        loc = strstr(extensions, ext);
        if(loc == ((void*)0))
            break;

        terminator = loc + strlen(ext);
        if((loc == extensions || *(loc - 1) == ' ') &&
            (*terminator == ' ' || *terminator == '\0'))
        {
            return 1;
        }
        extensions = terminator;
    }

    return 0;
}
