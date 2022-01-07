
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int major; } ;


 TYPE_1__ GLVersion ;
 int GL_EXTENSIONS ;
 int GL_NUM_EXTENSIONS ;
 int glGetIntegerv (int ,int*) ;
 scalar_t__ glGetString (int ) ;
 scalar_t__ glGetStringi (int ,int) ;
 scalar_t__ strcmp (char const*,char const*) ;
 int strlen (char const*) ;
 char* strstr (char const*,char const*) ;

__attribute__((used)) static int has_ext(const char *ext) {



        const char *extensions;
        const char *loc;
        const char *terminator;
        extensions = (const char *)glGetString(GL_EXTENSIONS);
        if(extensions == ((void*)0) || ext == ((void*)0)) {
            return 0;
        }

        while(1) {
            loc = strstr(extensions, ext);
            if(loc == ((void*)0)) {
                return 0;
            }

            terminator = loc + strlen(ext);
            if((loc == extensions || *(loc - 1) == ' ') &&
                (*terminator == ' ' || *terminator == '\0')) {
                return 1;
            }
            extensions = terminator;
        }
    return 0;
}
