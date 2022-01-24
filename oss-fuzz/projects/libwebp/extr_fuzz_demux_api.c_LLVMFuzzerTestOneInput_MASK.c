#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_9__ {int /*<<< orphan*/  bitstream; } ;
typedef  TYPE_1__ WebPMuxFrameInfo ;
typedef  int /*<<< orphan*/  WebPMuxError ;
typedef  int /*<<< orphan*/  WebPMuxAnimParams ;
typedef  int /*<<< orphan*/  WebPMux ;
typedef  int /*<<< orphan*/  WebPIterator ;
typedef  int /*<<< orphan*/  WebPDemuxer ;
typedef  scalar_t__ WebPDemuxState ;
struct TYPE_10__ {size_t size; int /*<<< orphan*/ * bytes; } ;
typedef  TYPE_2__ WebPData ;
typedef  int /*<<< orphan*/  WebPChunkIterator ;

/* Variables and functions */
 scalar_t__ WEBP_DEMUX_PARSED_HEADER ; 
 int /*<<< orphan*/  WEBP_MUX_NOT_FOUND ; 
 int /*<<< orphan*/  WEBP_MUX_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_2__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (TYPE_2__*,size_t) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,char*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int,TYPE_1__*) ; 
 int kFuzzFrameLimit ; 

int FUNC18(const uint8_t* const data, size_t size) {
  WebPData webp_data;
  FUNC1(&webp_data);
  webp_data.size = size;
  webp_data.bytes = data;

  // Extracted chunks and frames are not processed or decoded,
  // which is already covered extensively by the other fuzz targets.

  if (size & 1) {
    // Mux API
    WebPMux* mux = FUNC12(&webp_data, size & 2);
    if (!mux) return 0;

    WebPData chunk;
    FUNC15(mux, "EXIF", &chunk);
    FUNC15(mux, "ICCP", &chunk);
    FUNC15(mux, "FUZZ", &chunk);  // unknown

    uint32_t flags;
    FUNC16(mux, &flags);

    WebPMuxAnimParams params;
    FUNC14(mux, &params);

    WebPMuxError status;
    WebPMuxFrameInfo info;
    for (int i = 0; i < kFuzzFrameLimit; i++) {
      status = FUNC17(mux, i + 1, &info);
      if (status == WEBP_MUX_NOT_FOUND) {
        break;
      } else if (status == WEBP_MUX_OK) {
        FUNC0(&info.bitstream);
      }
    }

    FUNC13(mux);
  } else {
    // Demux API
    WebPDemuxer* demux;
    if (size & 2) {
      WebPDemuxState state;
      demux = FUNC8(&webp_data, &state);
      if (state < WEBP_DEMUX_PARSED_HEADER) {
        FUNC3(demux);
        return 0;
      }
    } else {
      demux = FUNC2(&webp_data);
      if (!demux) return 0;
    }

    WebPChunkIterator chunk_iter;
    if (FUNC4(demux, "EXIF", 1, &chunk_iter)) {
      FUNC6(&chunk_iter);
    }
    FUNC10(&chunk_iter);
    if (FUNC4(demux, "ICCP", 0, &chunk_iter)) {  // 0 == last
      FUNC9(&chunk_iter);
    }
    FUNC10(&chunk_iter);
    // Skips FUZZ because the Demux API has no concept of (un)known chunks.

    WebPIterator iter;
    if (FUNC5(demux, 1, &iter)) {
      for (int i = 1; i < kFuzzFrameLimit; i++) {
        if (!FUNC7(&iter)) break;
      }
    }

    FUNC11(&iter);
    FUNC3(demux);
  }

  return 0;
}