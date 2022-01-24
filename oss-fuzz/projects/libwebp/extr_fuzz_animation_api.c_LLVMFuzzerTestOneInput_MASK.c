#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  size_t uint32_t ;
struct TYPE_12__ {int /*<<< orphan*/  size; int /*<<< orphan*/  bytes; } ;
struct TYPE_13__ {TYPE_1__ fragment; } ;
typedef  TYPE_2__ WebPIterator ;
typedef  int /*<<< orphan*/  WebPDemuxer ;
struct TYPE_14__ {size_t size; int /*<<< orphan*/ * bytes; } ;
typedef  TYPE_3__ WebPData ;
struct TYPE_15__ {size_t use_threads; scalar_t__ color_mode; } ;
typedef  TYPE_4__ WebPAnimDecoderOptions ;
typedef  int /*<<< orphan*/  WebPAnimDecoder ;
typedef  scalar_t__ WEBP_CSP_MODE ;

/* Variables and functions */
 scalar_t__ MODE_BGRA ; 
 size_t MODE_LAST ; 
 scalar_t__ MODE_RGBA ; 
 scalar_t__ MODE_bgrA ; 
 scalar_t__ MODE_rgbA ; 
 int /*<<< orphan*/  WEBP_FF_CANVAS_HEIGHT ; 
 int /*<<< orphan*/  WEBP_FF_CANVAS_WIDTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int*) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ * const,int,TYPE_2__*) ; 
 size_t FUNC8 (int /*<<< orphan*/ * const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*) ; 
 int kFuzzFrameLimit ; 
 size_t kFuzzPxLimit ; 

int FUNC11(const uint8_t* const data, size_t size) {
  WebPData webp_data;
  FUNC4(&webp_data);
  webp_data.size = size;
  webp_data.bytes = data;

  // WebPAnimDecoderNew uses WebPDemux internally to calloc canvas size.
  WebPDemuxer* const demux = FUNC5(&webp_data);
  if (!demux) return 0;
  const uint32_t cw = FUNC8(demux, WEBP_FF_CANVAS_WIDTH);
  const uint32_t ch = FUNC8(demux, WEBP_FF_CANVAS_HEIGHT);
  if ((size_t)cw * ch > kFuzzPxLimit) {
    FUNC6(demux);
    return 0;
  }

  // In addition to canvas size, check each frame separately.
  WebPIterator iter;
  for (int i = 0; i < kFuzzFrameLimit; i++) {
    if (!FUNC7(demux, i + 1, &iter)) break;
    int w, h;
    if (FUNC10(iter.fragment.bytes, iter.fragment.size, &w, &h)) {
      if ((size_t)w * h > kFuzzPxLimit) {  // image size of the frame payload
        FUNC9(&iter);
        FUNC6(demux);
        return 0;
      }
    }
  }

  FUNC9(&iter);
  FUNC6(demux);

  WebPAnimDecoderOptions dec_options;
  if (!FUNC3(&dec_options)) return 0;

  dec_options.use_threads = size & 1;
  // Animations only support 4 (of 12) modes.
  dec_options.color_mode = (WEBP_CSP_MODE)(size % MODE_LAST);
  if (dec_options.color_mode != MODE_BGRA &&
      dec_options.color_mode != MODE_rgbA &&
      dec_options.color_mode != MODE_bgrA) {
    dec_options.color_mode = MODE_RGBA;
  }

  WebPAnimDecoder* dec = FUNC2(&webp_data, &dec_options);
  if (!dec) return 0;

  for (int i = 0; i < kFuzzFrameLimit; i++) {
    uint8_t* buf;
    int timestamp;
    if (!FUNC1(dec, &buf, &timestamp)) break;
  }

  FUNC0(dec);
  return 0;
}