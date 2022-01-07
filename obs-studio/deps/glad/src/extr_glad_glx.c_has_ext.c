
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GLADGLXDisplay ;
 int GLADGLXscreen ;
 int GLAD_GLX_VERSION_1_1 ;
 char* glXQueryExtensionsString (int ,int ) ;
 int strlen (char const*) ;
 char* strstr (char const*,char const*) ;

__attribute__((used)) static int has_ext(const char *ext) {
    const char *terminator;
    const char *loc;
    const char *extensions;

    if(!GLAD_GLX_VERSION_1_1)
        return 0;

    extensions = glXQueryExtensionsString(GLADGLXDisplay, GLADGLXscreen);

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
