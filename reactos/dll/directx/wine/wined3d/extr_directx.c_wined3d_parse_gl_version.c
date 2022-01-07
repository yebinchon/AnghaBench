
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;


 int ERR (char*,int) ;
 int MAKEDWORD_VERSION (int,int) ;
 int TRACE (char*,int,int) ;
 int atoi (char const*) ;
 int debugstr_a (char const*) ;
 scalar_t__ isdigit (char const) ;

__attribute__((used)) static DWORD wined3d_parse_gl_version(const char *gl_version)
{
    const char *ptr = gl_version;
    int major, minor;

    major = atoi(ptr);
    if (major <= 0)
        ERR("Invalid OpenGL major version %d.\n", major);

    while (isdigit(*ptr)) ++ptr;
    if (*ptr++ != '.')
        ERR("Invalid OpenGL version string %s.\n", debugstr_a(gl_version));

    minor = atoi(ptr);

    TRACE("Found OpenGL version %d.%d.\n", major, minor);

    return MAKEDWORD_VERSION(major, minor);
}
