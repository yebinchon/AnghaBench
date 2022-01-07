
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int ModuleName; int LoadedImageName; } ;
struct module {TYPE_1__ module; } ;
struct image_section_map {int dummy; } ;
struct image_file_map {int dummy; } ;
typedef int DWORD_PTR ;
typedef int DWORD ;
typedef int BYTE ;
typedef scalar_t__ BOOL ;


 scalar_t__ FALSE ;
 int const* IMAGE_NO_MAP ;
 int const NT_GNU_BUILD_ID ;
 int SHT_NULL ;
 scalar_t__ TRUE ;
 int WARN (char*,int ) ;
 int debugstr_w (int ) ;
 scalar_t__ elf_find_section (struct image_file_map*,char*,int ,struct image_section_map*) ;
 scalar_t__ elf_locate_build_id_target (struct image_file_map*,int const*,int const) ;
 scalar_t__ elf_locate_debug_link (struct image_file_map*,char const*,int ,int ) ;
 scalar_t__ image_map_section (struct image_section_map*) ;
 int image_unmap_section (struct image_section_map*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static BOOL elf_check_alternate(struct image_file_map* fmap, const struct module* module)
{
    BOOL ret = FALSE;
    BOOL found = FALSE;
    struct image_section_map buildid_sect, debuglink_sect;


    if (elf_find_section(fmap, ".note.gnu.build-id", SHT_NULL, &buildid_sect))
    {
        const uint32_t* note;

        found = TRUE;
        note = (const uint32_t*)image_map_section(&buildid_sect);
        if (note != IMAGE_NO_MAP)
        {

            if (note[2] == NT_GNU_BUILD_ID)
            {
                ret = elf_locate_build_id_target(fmap, (const BYTE*)(note + 3 + ((note[0] + 3) >> 2)), note[1]);
            }
        }
        image_unmap_section(&buildid_sect);
    }

    if (!ret && elf_find_section(fmap, ".gnu_debuglink", SHT_NULL, &debuglink_sect))
    {
        const char* dbg_link;

        found = TRUE;
        dbg_link = (const char*)image_map_section(&debuglink_sect);
        if (dbg_link != IMAGE_NO_MAP)
        {






            DWORD crc = *(const DWORD*)(dbg_link + ((DWORD_PTR)(strlen(dbg_link) + 4) & ~3));
            ret = elf_locate_debug_link(fmap, dbg_link, module->module.LoadedImageName, crc);
            if (!ret)
                WARN("Couldn't load linked debug file for %s\n",
                     debugstr_w(module->module.ModuleName));
        }
        image_unmap_section(&debuglink_sect);
    }
    return found ? ret : TRUE;
}
