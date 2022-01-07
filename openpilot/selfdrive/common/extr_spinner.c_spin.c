
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int NVGpaint ;
typedef int NVGcontext ;
typedef int FramebufferState ;
typedef int EGLSurface ;
typedef int EGLDisplay ;


 int GL_BLEND ;
 int GL_COLOR_BUFFER_BIT ;
 scalar_t__ GL_NO_ERROR ;
 int GL_ONE_MINUS_SRC_ALPHA ;
 int GL_SRC_ALPHA ;
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
 int assert (int) ;
 scalar_t__ atoi (char*) ;
 int eglSwapBuffers (int ,int ) ;
 int fgets (char*,int,int ) ;
 float fmax (double,float) ;
 float fmin (double,float) ;
 int * framebuffer_init (char*,int,int,int *,int *,int*,int*) ;
 int glBlendFunc (int ,int ) ;
 int glClear (int) ;
 int glClearColor (double,double,double,double) ;
 int glEnable (int ) ;
 scalar_t__ glGetError () ;
 int isdigit (char) ;
 int nvgBeginFrame (int *,int,int,float) ;
 int nvgBeginPath (int *) ;
 int nvgBoxGradient (int *,int,int,int,int,int,int,int ,int ) ;
 int nvgCreateFontMem (int *,char*,unsigned char*,scalar_t__,int ) ;
 int * nvgCreateGLES3 (int) ;
 int nvgCreateImageMem (int *,int ,unsigned char*,scalar_t__) ;
 int nvgEndFrame (int *) ;
 int nvgFill (int *) ;
 int nvgFillPaint (int *,int ) ;
 int nvgFontSize (int *,float) ;
 int nvgImagePattern (int *,int,int,int,int,int ,int,float) ;
 int nvgLinearGradient (int *,int,int ,int,int,int ,int ) ;
 int nvgRGB (int,int,int) ;
 int nvgRGBA (int ,int ,int ,int) ;
 int nvgRect (int *,int,int,int,int) ;
 int nvgRestore (int *) ;
 int nvgRotate (int *,double) ;
 int nvgRoundedRect (int *,int,int,int,int,int) ;
 int nvgSave (int *) ;
 int nvgText (int *,int,int,char*,int *) ;
 int nvgTextAlign (int *,int) ;
 int nvgTranslate (int *,int,int) ;
 int stdin ;
 scalar_t__ stdin_input_available () ;
 size_t strcspn (char*,char*) ;
 size_t strlen (char*) ;
 int strncpy (char*,char*,int) ;

int spin(int argc, char** argv) {
  int err;

  bool draw_progress = 0;
  float progress_val = 0.0;

  char spintext[SPINTEXT_LENGTH];
  spintext[0] = 0;

  const char* spintext_arg = ((void*)0);
  if (argc >= 2) {
    strncpy(spintext, argv[1], SPINTEXT_LENGTH);
  }


  int fb_w, fb_h;
  EGLDisplay display;
  EGLSurface surface;
  FramebufferState *fb = framebuffer_init("spinner", 0x00001000, 0,
                     &display, &surface, &fb_w, &fb_h);
  assert(fb);

  NVGcontext *vg = nvgCreateGLES3(NVG_ANTIALIAS | NVG_STENCIL_STROKES);
  assert(vg);

  int font = nvgCreateFontMem(vg, "Bold", (unsigned char*)_binary_opensans_semibold_ttf_start, _binary_opensans_semibold_ttf_end-_binary_opensans_semibold_ttf_start, 0);
  assert(font >= 0);

  int spinner_img = nvgCreateImageMem(vg, 0, (unsigned char*)_binary_img_spinner_track_png_start, _binary_img_spinner_track_png_end - _binary_img_spinner_track_png_start);
  assert(spinner_img >= 0);
  int spinner_img_s = 360;
  int spinner_img_x = ((fb_w/2)-(spinner_img_s/2));
  int spinner_img_y = 260;
  int spinner_img_xc = (fb_w/2);
  int spinner_img_yc = (fb_h/2)-100;
  int spinner_comma_img = nvgCreateImageMem(vg, 0, (unsigned char*)_binary_img_spinner_comma_png_start, _binary_img_spinner_comma_png_end - _binary_img_spinner_comma_png_start);
  assert(spinner_comma_img >= 0);

  for (int cnt = 0; ; cnt++) {

    if (stdin_input_available()){
      fgets(spintext, SPINTEXT_LENGTH, stdin);
      spintext[strcspn(spintext, "\n")] = 0;


      size_t len = strlen(spintext);
      bool is_number = len > 0;
      for (int i = 0; i < len; i++){
        if (!isdigit(spintext[i])){
          is_number = 0;
          break;
        }
      }

      if (is_number) {
        progress_val = (float)(atoi(spintext)) / 100.0;
        progress_val = fmin(1.0, progress_val);
        progress_val = fmax(0.0, progress_val);
      }

      draw_progress = is_number;
    }

    glClearColor(0.1, 0.1, 0.1, 1.0);
    glClear(GL_STENCIL_BUFFER_BIT | GL_COLOR_BUFFER_BIT);
    glEnable(GL_BLEND);
    glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
    nvgBeginFrame(vg, fb_w, fb_h, 1.0f);


    nvgBeginPath(vg);
    NVGpaint bg = nvgLinearGradient(vg, fb_w, 0, fb_w, fb_h,
    nvgRGBA(0, 0, 0, 175), nvgRGBA(0, 0, 0, 255));
    nvgFillPaint(vg, bg);
    nvgRect(vg, 0, 0, fb_w, fb_h);
    nvgFill(vg);


    nvgSave(vg);
    nvgTranslate(vg, spinner_img_xc, spinner_img_yc);
    nvgRotate(vg, (3.75*M_PI * cnt/120.0));
    nvgTranslate(vg, -spinner_img_xc, -spinner_img_yc);
    NVGpaint spinner_imgPaint = nvgImagePattern(vg, spinner_img_x, spinner_img_y,
      spinner_img_s, spinner_img_s, 0, spinner_img, 0.6f);
    nvgBeginPath(vg);
    nvgFillPaint(vg, spinner_imgPaint);
    nvgRect(vg, spinner_img_x, spinner_img_y, spinner_img_s, spinner_img_s);
    nvgFill(vg);
    nvgRestore(vg);


    NVGpaint comma_imgPaint = nvgImagePattern(vg, spinner_img_x, spinner_img_y,
      spinner_img_s, spinner_img_s, 0, spinner_comma_img, 1.0f);
    nvgBeginPath(vg);
    nvgFillPaint(vg, comma_imgPaint);
    nvgRect(vg, spinner_img_x, spinner_img_y, spinner_img_s, spinner_img_s);
    nvgFill(vg);

    if (draw_progress){

      int progress_width = 1000;
      int progress_x = fb_w/2-progress_width/2;
      int progress_y = 775;
      int progress_height = 25;

      NVGpaint paint = nvgBoxGradient(
          vg, progress_x + 1, progress_y + 1,
          progress_width - 2, progress_height, 3, 4, nvgRGB(27, 27, 27), nvgRGB(27, 27, 27));
      nvgBeginPath(vg);
      nvgRoundedRect(vg, progress_x, progress_y, progress_width, progress_height, 12);
      nvgFillPaint(vg, paint);
      nvgFill(vg);

      int bar_pos = ((progress_width - 2) * progress_val);

      paint = nvgBoxGradient(
          vg, progress_x, progress_y,
          bar_pos+1.5f, progress_height-1, 3, 4,
          nvgRGB(245, 245, 245), nvgRGB(105, 105, 105));

      nvgBeginPath(vg);
      nvgRoundedRect(
          vg, progress_x+1, progress_y+1,
          bar_pos, progress_height-2, 12);
      nvgFillPaint(vg, paint);
      nvgFill(vg);
    } else {

      nvgTextAlign(vg, NVG_ALIGN_CENTER | NVG_ALIGN_TOP);
      nvgFontSize(vg, 96.0f);
      nvgText(vg, fb_w/2, (fb_h*2/3)+24, spintext, ((void*)0));
    }

    nvgEndFrame(vg);
    eglSwapBuffers(display, surface);
    assert(glGetError() == GL_NO_ERROR);
  }

  return 0;
}
