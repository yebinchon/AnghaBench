
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLuint ;
__attribute__((used)) static const char *debug_rep(GLuint rep) {
    switch(rep) {
        case 129: return "GL_NONE";
        case 128: return "GL_RED";
        case 130: return "GL_GREEN";
        case 131: return "GL_BLUE";
        case 132: return "GL_ALPHA";
        default: return "unknown argrep";
    }
}
