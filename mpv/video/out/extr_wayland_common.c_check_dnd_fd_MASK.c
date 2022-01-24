#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct vo_wayland_state {int dnd_fd; scalar_t__ dnd_mime_score; int /*<<< orphan*/ * dnd_mime_type; int /*<<< orphan*/  dnd_offer; int /*<<< orphan*/  dnd_action; TYPE_1__* vo; } ;
struct pollfd {int member_0; int member_1; int revents; int /*<<< orphan*/  member_2; } ;
struct bstr {int dummy; } ;
typedef  size_t ptrdiff_t ;
struct TYPE_2__ {int /*<<< orphan*/  input_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vo_wayland_state*,char*,size_t) ; 
 int POLLERR ; 
 int POLLHUP ; 
 int POLLIN ; 
 struct bstr FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct bstr,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct pollfd*,int,int /*<<< orphan*/ ) ; 
 size_t FUNC6 (int,int /*<<< orphan*/ *,size_t const) ; 
 int /*<<< orphan*/ * FUNC7 (struct vo_wayland_state*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/ * FUNC8 (struct vo_wayland_state*,size_t const) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct vo_wayland_state *wl)
{
    if (wl->dnd_fd == -1)
        return;

    struct pollfd fdp = { wl->dnd_fd, POLLIN | POLLERR | POLLHUP, 0 };
    if (FUNC5(&fdp, 1, 0) <= 0)
        return;

    if (fdp.revents & POLLIN) {
        ptrdiff_t offset = 0;
        size_t data_read = 0;
        const size_t chunk_size = 1;
        uint8_t *buffer = FUNC8(wl, chunk_size);
        if (!buffer)
            goto end;

        while ((data_read = FUNC6(wl->dnd_fd, buffer + offset, chunk_size)) > 0) {
            offset += data_read;
            buffer = FUNC7(wl, buffer, offset + chunk_size);
            FUNC3(buffer + offset, 0, chunk_size);
            if (!buffer)
                goto end;
        }

        FUNC0(wl, "Read %td bytes from the DND fd\n", offset);

        struct bstr file_list = FUNC1(buffer);
        FUNC4(wl->vo->input_ctx, wl->dnd_mime_type,
                                file_list, wl->dnd_action);
        FUNC9(buffer);
end:
        FUNC10(wl->dnd_offer);
        FUNC9(wl->dnd_mime_type);
        wl->dnd_mime_type = NULL;
        wl->dnd_mime_score = 0;
    }

    if (fdp.revents & (POLLIN | POLLERR | POLLHUP)) {
        FUNC2(wl->dnd_fd);
        wl->dnd_fd = -1;
    }
}