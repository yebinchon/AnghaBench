
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_gl_info {int * supported; } ;
struct wined3d_extension_map {size_t extension; int extension_string; } ;
typedef size_t UINT ;


 int TRACE (char*,int ) ;
 int TRUE ;
 int debugstr_an (char const*,size_t) ;
 scalar_t__ isspace (char const) ;
 int memcmp (char const*,int ,size_t) ;
 size_t strlen (int ) ;

__attribute__((used)) static void parse_extension_string(struct wined3d_gl_info *gl_info, const char *extensions,
        const struct wined3d_extension_map *map, UINT entry_count)
{
    while (*extensions)
    {
        const char *start;
        size_t len;
        UINT i;

        while (isspace(*extensions))
            ++extensions;
        start = extensions;
        while (!isspace(*extensions) && *extensions)
            ++extensions;

        len = extensions - start;
        if (!len)
            continue;

        TRACE("- %s.\n", debugstr_an(start, len));

        for (i = 0; i < entry_count; ++i)
        {
            if (len == strlen(map[i].extension_string)
                    && !memcmp(start, map[i].extension_string, len))
            {
                TRACE(" FOUND: %s support.\n", map[i].extension_string);
                gl_info->supported[map[i].extension] = TRUE;
                break;
            }
        }
    }
}
