
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nk_font_atlas {int dummy; } ;
struct nk_font {int handle; } ;
struct nk_context {int dummy; } ;
struct nk_canvas {int painter; } ;
struct device {int null; scalar_t__ font_tex; } ;
typedef int GLFWwindow ;


 scalar_t__ GLEW_OK ;
 int GLFW_CONTEXT_VERSION_MAJOR ;
 int GLFW_CONTEXT_VERSION_MINOR ;
 int GLFW_OPENGL_CORE_PROFILE ;
 int GLFW_OPENGL_FORWARD_COMPAT ;
 int GLFW_OPENGL_PROFILE ;
 int GL_COLOR_BUFFER_BIT ;
 int GL_TEXTURE_2D ;
 int GL_TRUE ;
 int NK_ANTI_ALIASING_ON ;
 int NK_FONT_ATLAS_RGBA32 ;
 int WINDOW_HEIGHT ;
 int WINDOW_WIDTH ;
 int canvas_begin (struct nk_context*,struct nk_canvas*,int ,int ,int ,int,int,int ) ;
 int canvas_end (struct nk_context*,struct nk_canvas*) ;
 int device_draw (struct device*,struct nk_context*,int,int,int ) ;
 int device_init (struct device*) ;
 int device_shutdown (struct device*) ;
 int device_upload_atlas (struct device*,void const*,int,int) ;
 int error_callback ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int glClear (int ) ;
 int glClearColor (float,float,float,float) ;
 int glEnable (int ) ;
 int glViewport (int ,int ,int,int) ;
 int glewExperimental ;
 scalar_t__ glewInit () ;
 int * glfwCreateWindow (int,int,char*,int *,int *) ;
 int glfwGetWindowSize (int *,int*,int*) ;
 int glfwInit () ;
 int glfwMakeContextCurrent (int *) ;
 int glfwSetCharCallback (int *,int ) ;
 int glfwSetErrorCallback (int ) ;
 int glfwSetScrollCallback (int *,int ) ;
 int glfwSetWindowUserPointer (int *,struct nk_context*) ;
 int glfwSwapBuffers (int *) ;
 int glfwTerminate () ;
 int glfwWindowHint (int ,int) ;
 int glfwWindowShouldClose (int *) ;
 int nk_draw_text (int ,int ,char*,int,int *,int ,int ) ;
 int nk_fill_arc (int ,int,int,int,int ,float,int ) ;
 int nk_fill_circle (int ,int ,int ) ;
 int nk_fill_polygon (int ,float*,int,int ) ;
 int nk_fill_rect (int ,int ,int,int ) ;
 int nk_fill_triangle (int ,int,int,int,int,int,int,int ) ;
 struct nk_font* nk_font_atlas_add_default (struct nk_font_atlas*,int,int ) ;
 void* nk_font_atlas_bake (struct nk_font_atlas*,int*,int*,int ) ;
 int nk_font_atlas_begin (struct nk_font_atlas*) ;
 int nk_font_atlas_clear (struct nk_font_atlas*) ;
 int nk_font_atlas_end (struct nk_font_atlas*,int ,int *) ;
 int nk_font_atlas_init_default (struct nk_font_atlas*) ;
 int nk_free (struct nk_context*) ;
 int nk_handle_id (int) ;
 int nk_init_default (struct nk_context*,int *) ;
 int nk_rect (int,int,int,int) ;
 int nk_rgb (int,int,int) ;
 int nk_stroke_circle (int ,int ,int,int ) ;
 int nk_stroke_curve (int ,int,int,int,int,int,int,int,int,int,int ) ;
 int nk_stroke_line (int ,int,int,int,int,float,int ) ;
 int nk_stroke_rect (int ,int ,int,int,int ) ;
 int nk_stroke_triangle (int ,int,int,int,int,int,int,int,int ) ;
 int pump_input (struct nk_context*,int *) ;
 int scroll_input ;
 int stderr ;
 int stdout ;
 int text_input ;

int main(int argc, char *argv[])
{

    static GLFWwindow *win;
    int width = 0, height = 0;


    struct device device;
    struct nk_font_atlas atlas;
    struct nk_context ctx;


    glfwSetErrorCallback(error_callback);
    if (!glfwInit()) {
        fprintf(stdout, "[GFLW] failed to init!\n");
        exit(1);
    }
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);
    glfwWindowHint(GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE);
    win = glfwCreateWindow(WINDOW_WIDTH, WINDOW_HEIGHT, "Demo", ((void*)0), ((void*)0));
    glfwMakeContextCurrent(win);
    glfwSetWindowUserPointer(win, &ctx);
    glfwSetCharCallback(win, text_input);
    glfwSetScrollCallback(win, scroll_input);
    glfwGetWindowSize(win, &width, &height);


    glViewport(0, 0, WINDOW_WIDTH, WINDOW_HEIGHT);
    glewExperimental = 1;
    if (glewInit() != GLEW_OK) {
        fprintf(stderr, "Failed to setup GLEW\n");
        exit(1);
    }


    {device_init(&device);
    {const void *image; int w, h;
    struct nk_font *font;
    nk_font_atlas_init_default(&atlas);
    nk_font_atlas_begin(&atlas);
    font = nk_font_atlas_add_default(&atlas, 13, 0);
    image = nk_font_atlas_bake(&atlas, &w, &h, NK_FONT_ATLAS_RGBA32);
    device_upload_atlas(&device, image, w, h);
    nk_font_atlas_end(&atlas, nk_handle_id((int)device.font_tex), &device.null);
    nk_init_default(&ctx, &font->handle);

    glEnable(GL_TEXTURE_2D);
    while (!glfwWindowShouldClose(win))
    {

        pump_input(&ctx, win);


        {struct nk_canvas canvas;
        canvas_begin(&ctx, &canvas, 0, 0, 0, width, height, nk_rgb(250,250,250));
        {
            nk_fill_rect(canvas.painter, nk_rect(15,15,210,210), 5, nk_rgb(247, 230, 154));
            nk_fill_rect(canvas.painter, nk_rect(20,20,200,200), 5, nk_rgb(188, 174, 118));
            nk_draw_text(canvas.painter, nk_rect(30, 30, 150, 20), "Text to draw", 12, &font->handle, nk_rgb(188,174,118), nk_rgb(0,0,0));
            nk_fill_rect(canvas.painter, nk_rect(250,20,100,100), 0, nk_rgb(0,0,255));
            nk_fill_circle(canvas.painter, nk_rect(20,250,100,100), nk_rgb(255,0,0));
            nk_fill_triangle(canvas.painter, 250, 250, 350, 250, 300, 350, nk_rgb(0,255,0));
            nk_fill_arc(canvas.painter, 300, 180, 50, 0, 3.141592654f * 3.0f / 4.0f, nk_rgb(255,255,0));

            {float points[12];
            points[0] = 200; points[1] = 250;
            points[2] = 250; points[3] = 350;
            points[4] = 225; points[5] = 350;
            points[6] = 200; points[7] = 300;
            points[8] = 175; points[9] = 350;
            points[10] = 150; points[11] = 350;
            nk_fill_polygon(canvas.painter, points, 6, nk_rgb(0,0,0));}

            nk_stroke_line(canvas.painter, 15, 10, 200, 10, 2.0f, nk_rgb(189,45,75));
            nk_stroke_rect(canvas.painter, nk_rect(370, 20, 100, 100), 10, 3, nk_rgb(0,0,255));
            nk_stroke_curve(canvas.painter, 380, 200, 405, 270, 455, 120, 480, 200, 2, nk_rgb(0,150,220));
            nk_stroke_circle(canvas.painter, nk_rect(20, 370, 100, 100), 5, nk_rgb(0,255,120));
            nk_stroke_triangle(canvas.painter, 370, 250, 470, 250, 420, 350, 6, nk_rgb(255,0,143));
        }
        canvas_end(&ctx, &canvas);}


        glfwGetWindowSize(win, &width, &height);
        glViewport(0, 0, width, height);
        glClear(GL_COLOR_BUFFER_BIT);
        glClearColor(0.2f, 0.2f, 0.2f, 1.0f);
        device_draw(&device, &ctx, width, height, NK_ANTI_ALIASING_ON);
        glfwSwapBuffers(win);
    }}}
    nk_font_atlas_clear(&atlas);
    nk_free(&ctx);
    device_shutdown(&device);
    glfwTerminate();
    return 0;
}
