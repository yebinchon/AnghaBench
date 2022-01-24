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
struct priv {int /*<<< orphan*/  fp; scalar_t__ waveheader; scalar_t__ outputfilename; scalar_t__ append; } ;
struct mp_chmap_sel {int /*<<< orphan*/  member_0; } ;
struct TYPE_2__ {int num; } ;
struct ao {int format; int bps; int samplerate; int untimed; TYPE_1__ channels; struct priv* priv; } ;

/* Variables and functions */
#define  AF_FORMAT_FLOAT 131 
#define  AF_FORMAT_S16 130 
#define  AF_FORMAT_S32 129 
#define  AF_FORMAT_U8 128 
 scalar_t__ BIG_ENDIAN ; 
 scalar_t__ BYTE_ORDER ; 
 int /*<<< orphan*/  FUNC0 (struct ao*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct ao*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct ao*,char*,scalar_t__,char*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct ao*,struct mp_chmap_sel*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct mp_chmap_sel*) ; 
 scalar_t__ FUNC10 (struct priv*,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct ao*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC12(struct ao *ao)
{
    struct priv *priv = ao->priv;

    if (!priv->outputfilename)
        priv->outputfilename =
            FUNC10(priv, priv->waveheader ? "audiodump.wav" : "audiodump.pcm");

    ao->format = FUNC3(ao->format);

    if (priv->waveheader) {
        // WAV files must have one of the following formats

        // And they don't work in big endian; fixing it would be simple, but
        // nobody cares.
        if (BYTE_ORDER == BIG_ENDIAN) {
            FUNC1(ao, "Not supported on big endian.\n");
            return -1;
        }

        switch (ao->format) {
        case AF_FORMAT_U8:
        case AF_FORMAT_S16:
        case AF_FORMAT_S32:
        case AF_FORMAT_FLOAT:
             break;
        default:
            if (!FUNC4(ao->format))
                ao->format = AF_FORMAT_S16;
            break;
        }
    }

    struct mp_chmap_sel sel = {0};
    FUNC9(&sel);
    if (!FUNC7(ao, &sel, &ao->channels))
        return -1;

    ao->bps = ao->channels.num * ao->samplerate * FUNC5(ao->format);

    FUNC2(ao, "File: %s (%s)\nPCM: Samplerate: %d Hz Channels: %d Format: %s\n",
            priv->outputfilename,
            priv->waveheader ? "WAVE" : "RAW PCM", ao->samplerate,
            ao->channels.num, FUNC6(ao->format));

    priv->fp = FUNC8(priv->outputfilename, priv->append ? "ab" : "wb");
    if (!priv->fp) {
        FUNC0(ao, "Failed to open %s for writing!\n", priv->outputfilename);
        return -1;
    }
    if (priv->waveheader)  // Reserve space for wave header
        FUNC11(ao, priv->fp, 0x7ffff000);
    ao->untimed = true;

    return 0;
}