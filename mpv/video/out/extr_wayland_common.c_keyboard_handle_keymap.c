
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct wl_keyboard {int dummy; } ;
struct vo_wayland_state {int * xkb_keymap; int xkb_state; int xkb_context; } ;
typedef int int32_t ;


 char* MAP_FAILED ;
 int MAP_SHARED ;
 int MP_ERR (struct vo_wayland_state*,char*) ;
 int PROT_READ ;
 scalar_t__ WL_KEYBOARD_KEYMAP_FORMAT_XKB_V1 ;
 int XKB_KEYMAP_FORMAT_TEXT_V1 ;
 int close (int ) ;
 char* mmap (int *,scalar_t__,int ,int ,int ,int ) ;
 int munmap (char*,scalar_t__) ;
 int * xkb_keymap_new_from_string (int ,char*,int ,int ) ;
 int xkb_keymap_unref (int *) ;
 int xkb_state_new (int *) ;

__attribute__((used)) static void keyboard_handle_keymap(void *data, struct wl_keyboard *wl_keyboard,
                                   uint32_t format, int32_t fd, uint32_t size)
{
    struct vo_wayland_state *wl = data;
    char *map_str;

    if (format != WL_KEYBOARD_KEYMAP_FORMAT_XKB_V1) {
        close(fd);
        return;
    }

    map_str = mmap(((void*)0), size, PROT_READ, MAP_SHARED, fd, 0);
    if (map_str == MAP_FAILED) {
        close(fd);
        return;
    }

    wl->xkb_keymap = xkb_keymap_new_from_string(wl->xkb_context, map_str,
                                                XKB_KEYMAP_FORMAT_TEXT_V1, 0);

    munmap(map_str, size);
    close(fd);

    if (!wl->xkb_keymap) {
        MP_ERR(wl, "failed to compile keymap\n");
        return;
    }

    wl->xkb_state = xkb_state_new(wl->xkb_keymap);
    if (!wl->xkb_state) {
        MP_ERR(wl, "failed to create XKB state\n");
        xkb_keymap_unref(wl->xkb_keymap);
        wl->xkb_keymap = ((void*)0);
        return;
    }
}
