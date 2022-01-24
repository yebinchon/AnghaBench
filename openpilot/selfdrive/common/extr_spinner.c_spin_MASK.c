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
typedef  int /*<<< orphan*/  NVGpaint ;
typedef  int /*<<< orphan*/  NVGcontext ;
typedef  int /*<<< orphan*/  FramebufferState ;
typedef  int /*<<< orphan*/  EGLSurface ;
typedef  int /*<<< orphan*/  EGLDisplay ;

/* Variables and functions */
 int /*<<< orphan*/  GL_BLEND ; 
 int GL_COLOR_BUFFER_BIT ; 
 scalar_t__ GL_NO_ERROR ; 
 int /*<<< orphan*/  GL_ONE_MINUS_SRC_ALPHA ; 
 int /*<<< orphan*/  GL_SRC_ALPHA ; 
 int GL_STENCIL_BUFFER_BIT ; 
 double M_PI ; 
 int NVG_ALIGN_CENTER ; 
 int NVG_ALIGN_TOP ; 
 int NVG_ANTIALIAS ; 
 int NVG_STENCIL_STROKES ; 
 int SPINTEXT_LENGTH ; 
 scalar_t__ _binary_img_spinner_comma_png_end ; 
 scalar_t__ _binary_img_spinner_comma_png_start ; 
 scalar_t__ _binary_img_spinner_track_png_end ; 
 scalar_t__ _binary_img_spinner_track_png_start ; 
 scalar_t__ _binary_opensans_semibold_ttf_end ; 
 scalar_t__ _binary_opensans_semibold_ttf_start ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ ) ; 
 float FUNC4 (double,float) ; 
 float FUNC5 (double,float) ; 
 int /*<<< orphan*/ * FUNC6 (char*,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (double,double,double,double) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (char) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int,int,float) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int,int,int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ *,char*,unsigned char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC17 (int) ; 
 int FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,float) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int,int,int,int,int /*<<< orphan*/ ,int,float) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int,int,int) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *,double) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *,int,int,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  stdin ; 
 scalar_t__ FUNC35 () ; 
 size_t FUNC36 (char*,char*) ; 
 size_t FUNC37 (char*) ; 
 int /*<<< orphan*/  FUNC38 (char*,char*,int) ; 

int FUNC39(int argc, char** argv) {
  int err;

  bool draw_progress = false;
  float progress_val = 0.0;

  char spintext[SPINTEXT_LENGTH];
  spintext[0] = 0;

  const char* spintext_arg = NULL;
  if (argc >= 2) {
    FUNC38(spintext, argv[1], SPINTEXT_LENGTH);
  }

  // spinner
  int fb_w, fb_h;
  EGLDisplay display;
  EGLSurface surface;
  FramebufferState *fb = FUNC6("spinner", 0x00001000, false,
                     &display, &surface, &fb_w, &fb_h);
  FUNC0(*fb);

  NVGcontext *vg = FUNC17(NVG_ANTIALIAS | NVG_STENCIL_STROKES);
  FUNC0(*vg);

  int font = FUNC16(vg, "Bold", (unsigned char*)_binary_opensans_semibold_ttf_start, _binary_opensans_semibold_ttf_end-_binary_opensans_semibold_ttf_start, 0);
  FUNC0(font >= 0);

  int spinner_img = FUNC18(vg, 0, (unsigned char*)_binary_img_spinner_track_png_start, _binary_img_spinner_track_png_end - _binary_img_spinner_track_png_start);
  FUNC0(spinner_img >= 0);
  int spinner_img_s = 360;
  int spinner_img_x = ((fb_w/2)-(spinner_img_s/2));
  int spinner_img_y = 260;
  int spinner_img_xc = (fb_w/2);
  int spinner_img_yc = (fb_h/2)-100;
  int spinner_comma_img = FUNC18(vg, 0, (unsigned char*)_binary_img_spinner_comma_png_start, _binary_img_spinner_comma_png_end - _binary_img_spinner_comma_png_start);
  FUNC0(spinner_comma_img >= 0);

  for (int cnt = 0; ; cnt++) {
    // Check stdin for new text
    if (FUNC35()){
      FUNC3(spintext, SPINTEXT_LENGTH, stdin);
      spintext[FUNC36(spintext, "\n")] = 0;

      // Check if number (update progress bar)
      size_t len = FUNC37(spintext);
      bool is_number = len > 0;
      for (int i = 0; i < len; i++){
        if (!FUNC12(spintext[i])){
          is_number = false;
          break;
        }
      }

      if (is_number) {
        progress_val = (float)(FUNC1(spintext)) / 100.0;
        progress_val = FUNC5(1.0, progress_val);
        progress_val = FUNC4(0.0, progress_val);
      }

      draw_progress = is_number;
    }

    FUNC9(0.1, 0.1, 0.1, 1.0);
    FUNC8(GL_STENCIL_BUFFER_BIT | GL_COLOR_BUFFER_BIT);
    FUNC10(GL_BLEND);
    FUNC7(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
    FUNC13(vg, fb_w, fb_h, 1.0f);

    // background
    FUNC14(vg);
    NVGpaint bg = FUNC24(vg, fb_w, 0, fb_w, fb_h,
    FUNC26(0, 0, 0, 175), FUNC26(0, 0, 0, 255));
    FUNC21(vg, bg);
    FUNC27(vg, 0, 0, fb_w, fb_h);
    FUNC20(vg);

    // spin track
    FUNC31(vg);
    FUNC34(vg, spinner_img_xc, spinner_img_yc);
    FUNC29(vg, (3.75*M_PI * cnt/120.0));
    FUNC34(vg, -spinner_img_xc, -spinner_img_yc);
    NVGpaint spinner_imgPaint = FUNC23(vg, spinner_img_x, spinner_img_y,
      spinner_img_s, spinner_img_s, 0, spinner_img, 0.6f);
    FUNC14(vg);
    FUNC21(vg, spinner_imgPaint);
    FUNC27(vg, spinner_img_x, spinner_img_y, spinner_img_s, spinner_img_s);
    FUNC20(vg);
    FUNC28(vg);

    // comma
    NVGpaint comma_imgPaint = FUNC23(vg, spinner_img_x, spinner_img_y,
      spinner_img_s, spinner_img_s, 0, spinner_comma_img, 1.0f);
    FUNC14(vg);
    FUNC21(vg, comma_imgPaint);
    FUNC27(vg, spinner_img_x, spinner_img_y, spinner_img_s, spinner_img_s);
    FUNC20(vg);

    if (draw_progress){
      // draw progress bar
      int progress_width = 1000;
      int progress_x = fb_w/2-progress_width/2;
      int progress_y = 775;
      int progress_height = 25;

      NVGpaint paint = FUNC15(
          vg, progress_x + 1, progress_y + 1,
          progress_width - 2, progress_height, 3, 4, FUNC25(27, 27, 27), FUNC25(27, 27, 27));
      FUNC14(vg);
      FUNC30(vg, progress_x, progress_y, progress_width, progress_height, 12);
      FUNC21(vg, paint);
      FUNC20(vg);

      int bar_pos = ((progress_width - 2) * progress_val);

      paint = FUNC15(
          vg, progress_x, progress_y,
          bar_pos+1.5f, progress_height-1, 3, 4,
          FUNC25(245, 245, 245), FUNC25(105, 105, 105));

      FUNC14(vg);
      FUNC30(
          vg, progress_x+1, progress_y+1,
          bar_pos, progress_height-2, 12);
      FUNC21(vg, paint);
      FUNC20(vg);
    } else {
      // message
      FUNC33(vg, NVG_ALIGN_CENTER | NVG_ALIGN_TOP);
      FUNC22(vg, 96.0f);
      FUNC32(vg, fb_w/2, (fb_h*2/3)+24, spintext, NULL);
    }

    FUNC19(vg);
    FUNC2(display, surface);
    FUNC0(FUNC11() == GL_NO_ERROR);
  }

  return 0;
}