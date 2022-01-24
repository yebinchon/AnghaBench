#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  scalar_t__ WebPImageHint ;
struct TYPE_5__ {int lossless; int quality; int method; int segments; int sns_strength; int filter_strength; int filter_sharpness; int filter_type; int autofilter; int alpha_compression; int alpha_filtering; int alpha_quality; int pass; int show_compressed; int preprocessing; int partitions; int partition_limit; int emulate_jpeg_size; int thread_level; int low_memory; int near_lossless; int exact; int use_delta_palette; int use_sharp_yuv; scalar_t__ image_hint; } ;
typedef  TYPE_1__ WebPConfig ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ * const) ; 
 int WEBP_HINT_LAST ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__* const) ; 
 int FUNC2 (TYPE_1__* const) ; 

__attribute__((used)) static int FUNC3(WebPConfig* const config, const uint8_t data[],
                             size_t size, uint32_t* const bit_pos) {
  if (config == NULL || !FUNC1(config)) return 0;
  config->lossless = FUNC0(1, data, size, bit_pos);
  config->quality = FUNC0(100, data, size, bit_pos);
  config->method = FUNC0(6, data, size, bit_pos);
  config->image_hint =
      (WebPImageHint)FUNC0(WEBP_HINT_LAST - 1, data, size, bit_pos);
  config->segments = 1 + FUNC0(3, data, size, bit_pos);
  config->sns_strength = FUNC0(100, data, size, bit_pos);
  config->filter_strength = FUNC0(100, data, size, bit_pos);
  config->filter_sharpness = FUNC0(7, data, size, bit_pos);
  config->filter_type = FUNC0(1, data, size, bit_pos);
  config->autofilter = FUNC0(1, data, size, bit_pos);
  config->alpha_compression = FUNC0(1, data, size, bit_pos);
  config->alpha_filtering = FUNC0(2, data, size, bit_pos);
  config->alpha_quality = FUNC0(100, data, size, bit_pos);
  config->pass = 1 + FUNC0(9, data, size, bit_pos);
  config->show_compressed = 1;
  config->preprocessing = FUNC0(2, data, size, bit_pos);
  config->partitions = FUNC0(3, data, size, bit_pos);
  config->partition_limit = 10 * FUNC0(10, data, size, bit_pos);
  config->emulate_jpeg_size = FUNC0(1, data, size, bit_pos);
  config->thread_level = FUNC0(1, data, size, bit_pos);
  config->low_memory = FUNC0(1, data, size, bit_pos);
  config->near_lossless = 20 * FUNC0(5, data, size, bit_pos);
  config->exact = FUNC0(1, data, size, bit_pos);
  config->use_delta_palette = FUNC0(1, data, size, bit_pos);
  config->use_sharp_yuv = FUNC0(1, data, size, bit_pos);
  return FUNC2(config);
}