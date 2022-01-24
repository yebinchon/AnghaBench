#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct priv {int data_length; int /*<<< orphan*/  fp; scalar_t__ waveheader; } ;
struct ao {struct priv* priv; } ;
typedef  int /*<<< orphan*/  HANDLE ;

/* Variables and functions */
 scalar_t__ FILE_TYPE_DISK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ao*,char*) ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ao*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC7(struct ao *ao)
{
    struct priv *priv = ao->priv;

    if (priv->waveheader) {    // Rewrite wave header
        bool broken_seek = false;
#ifdef __MINGW32__
        // Windows, in its usual idiocy "emulates" seeks on pipes so it always
        // looks like they work. So we have to detect them brute-force.
        broken_seek = FILE_TYPE_DISK !=
            GetFileType((HANDLE)_get_osfhandle(_fileno(priv->fp)));
#endif
        if (broken_seek || FUNC5(priv->fp, 0, SEEK_SET) != 0)
            FUNC1(ao, "Could not seek to start, WAV size headers not updated!\n");
        else {
            if (priv->data_length > 0xfffff000) {
                FUNC1(ao, "File larger than allowed for "
                       "WAV files, may play truncated!\n");
                priv->data_length = 0xfffff000;
            }
            FUNC6(ao, priv->fp, priv->data_length);
        }
    }
    FUNC4(priv->fp);
}