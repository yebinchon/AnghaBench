#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int Flags; int /*<<< orphan*/  FormatID; } ;
struct image_codec {TYPE_1__ info; } ;
struct TYPE_5__ {int /*<<< orphan*/  format; } ;
typedef  int /*<<< orphan*/  GpStatus ;
typedef  TYPE_2__ GpImage ;

/* Variables and functions */
 int /*<<< orphan*/  GenericError ; 
 int ImageCodecFlagsDecoder ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int NUM_CODECS ; 
 int /*<<< orphan*/  Ok ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 struct image_codec* codecs ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static GpStatus FUNC3(GpImage *image, const struct image_codec **result)
{
    int i;

    for (i = 0; i < NUM_CODECS; i++) {
        if ((codecs[i].info.Flags & ImageCodecFlagsDecoder) &&
                FUNC0(&codecs[i].info.FormatID, &image->format))
        {
            *result = &codecs[i];
            return Ok;
        }
    }

    FUNC1("no match for format: %s\n", FUNC2(&image->format));
    return GenericError;
}