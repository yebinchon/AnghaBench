
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* (* GetString ) (int ) ;} ;
typedef TYPE_1__ GL ;


 int GL_RENDERER ;
 int GL_VENDOR ;
 scalar_t__ strcmp (char const*,char*) ;
 scalar_t__ strstr (char const*,char*) ;
 char* stub1 (int ) ;
 char* stub2 (int ) ;

__attribute__((used)) static bool is_software_gl(GL *gl)
{
    const char *renderer = gl->GetString(GL_RENDERER);
    const char *vendor = gl->GetString(GL_VENDOR);
    return !(renderer && vendor) ||
           strcmp(renderer, "Software Rasterizer") == 0 ||
           strstr(renderer, "llvmpipe") ||
           strcmp(vendor, "Microsoft Corporation") == 0 ||
           strcmp(renderer, "Mesa X11") == 0 ||
           strcmp(renderer, "Apple Software Renderer") == 0;
}
