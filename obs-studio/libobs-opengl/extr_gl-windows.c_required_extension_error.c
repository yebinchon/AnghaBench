
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_ERROR ;
 int blog (int ,char*,char const*) ;

__attribute__((used)) static inline void required_extension_error(const char *extension)
{
 blog(LOG_ERROR, "OpenGL extension %s is required", extension);
}
