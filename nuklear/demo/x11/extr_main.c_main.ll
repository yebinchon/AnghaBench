; ModuleID = '/home/carl/AnghaBench/nuklear/demo/x11/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/nuklear/demo/x11/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_11__, i32, %struct.TYPE_12__, i32, i32 }
%struct.TYPE_11__ = type { i64, i64 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.nk_context = type { i32 }
%struct.TYPE_10__ = type { i64 }

@.str = private unnamed_addr constant [55 x i8] c"Could not open a display; perhaps $DISPLAY is not set?\00", align 1
@AllocNone = common dso_local global i32 0, align 4
@ExposureMask = common dso_local global i32 0, align 4
@KeyPressMask = common dso_local global i32 0, align 4
@KeyReleaseMask = common dso_local global i32 0, align 4
@ButtonPress = common dso_local global i32 0, align 4
@ButtonReleaseMask = common dso_local global i32 0, align 4
@ButtonMotionMask = common dso_local global i32 0, align 4
@Button1MotionMask = common dso_local global i32 0, align 4
@Button3MotionMask = common dso_local global i32 0, align 4
@Button4MotionMask = common dso_local global i32 0, align 4
@Button5MotionMask = common dso_local global i32 0, align 4
@PointerMotionMask = common dso_local global i32 0, align 4
@KeymapStateMask = common dso_local global i32 0, align 4
@WINDOW_WIDTH = common dso_local global i32 0, align 4
@WINDOW_HEIGHT = common dso_local global i32 0, align 4
@InputOutput = common dso_local global i32 0, align 4
@CWEventMask = common dso_local global i32 0, align 4
@CWColormap = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"X11\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"WM_DELETE_WINDOW\00", align 1
@False = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"fixed\00", align 1
@ClientMessage = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"Demo\00", align 1
@NK_WINDOW_BORDER = common dso_local global i32 0, align 4
@NK_WINDOW_MOVABLE = common dso_local global i32 0, align 4
@NK_WINDOW_SCALABLE = common dso_local global i32 0, align 4
@NK_WINDOW_CLOSABLE = common dso_local global i32 0, align 4
@NK_WINDOW_MINIMIZABLE = common dso_local global i32 0, align 4
@NK_WINDOW_TITLE = common dso_local global i32 0, align 4
@main.op = internal global i32 0, align 4
@main.property = internal global i32 20, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"button\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [16 x i8] c"button pressed\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"easy\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"hard\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"Compression:\00", align 1
@DTIME = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__, align 8
  %6 = alloca %struct.nk_context*, align 8
  %7 = alloca %struct.TYPE_10__, align 8
  store i32 0, i32* %1, align 4
  store i32 1, i32* %4, align 4
  %8 = call i32 @memset(%struct.TYPE_9__* %5, i32 0, i32 72)
  %9 = call i32 @XOpenDisplay(i32* null)
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 2
  store i32 %9, i32* %10, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %0
  %15 = call i32 @die(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %0
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @DefaultRootWindow(i32 %18)
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 11
  store i32 %19, i32* %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @XDefaultScreen(i32 %22)
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 6
  store i32 %23, i32* %24, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 6
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @XDefaultVisual(i32 %26, i32 %28)
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 10
  store i32 %29, i32* %30, align 4
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 11
  %34 = load i32, i32* %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 10
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @AllocNone, align 4
  %38 = call i32 @XCreateColormap(i32 %32, i32 %34, i32 %36, i32 %37)
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 4
  store i32 %38, i32* %39, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 9
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @ExposureMask, align 4
  %45 = load i32, i32* @KeyPressMask, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @KeyReleaseMask, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @ButtonPress, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @ButtonReleaseMask, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @ButtonMotionMask, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @Button1MotionMask, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @Button3MotionMask, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @Button4MotionMask, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @Button5MotionMask, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @PointerMotionMask, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @KeymapStateMask, align 4
  %66 = or i32 %64, %65
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 9
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 11
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @WINDOW_WIDTH, align 4
  %74 = load i32, i32* @WINDOW_HEIGHT, align 4
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 6
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @XDefaultDepth(i32 %76, i32 %78)
  %80 = load i32, i32* @InputOutput, align 4
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 10
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @CWEventMask, align 4
  %84 = load i32, i32* @CWColormap, align 4
  %85 = or i32 %83, %84
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 9
  %87 = call i32 @XCreateWindow(i32 %70, i32 %72, i32 0, i32 0, i32 %73, i32 %74, i32 0, i32 %79, i32 %80, i32 %82, i32 %85, %struct.TYPE_12__* %86)
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 3
  store i32 %87, i32* %88, align 4
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @XStoreName(i32 %90, i32 %92, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @XMapWindow(i32 %95, i32 %97)
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @False, align 4
  %102 = call i32 @XInternAtom(i32 %100, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %101)
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 8
  store i32 %102, i32* %103, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 8
  %109 = call i32 @XSetWMProtocols(i32 %105, i32 %107, i32* %108, i32 1)
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 7
  %115 = call i32 @XGetWindowAttributes(i32 %111, i32 %113, %struct.TYPE_11__* %114)
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 7
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = trunc i64 %118 to i32
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  store i32 %119, i32* %120, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 7
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = trunc i64 %123 to i32
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 1
  store i32 %124, i32* %125, align 4
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @nk_xfont_create(i32 %127, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 5
  store i32 %128, i32* %129, align 4
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 5
  %131 = load i32, i32* %130, align 4
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 6
  %135 = load i32, i32* %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = call %struct.nk_context* @nk_xlib_init(i32 %131, i32 %133, i32 %135, i32 %137, i32 %139, i32 %141)
  store %struct.nk_context* %142, %struct.nk_context** %6, align 8
  br label %143

143:                                              ; preds = %259, %16
  %144 = load i32, i32* %4, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %260

146:                                              ; preds = %143
  %147 = call i64 (...) @timestamp()
  store i64 %147, i64* %3, align 8
  %148 = load %struct.nk_context*, %struct.nk_context** %6, align 8
  %149 = call i32 @nk_input_begin(%struct.nk_context* %148)
  br label %150

150:                                              ; preds = %170, %169, %146
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = call i64 @XPending(i32 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %178

155:                                              ; preds = %150
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @XNextEvent(i32 %157, %struct.TYPE_10__* %7)
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @ClientMessage, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %164

163:                                              ; preds = %155
  br label %261

164:                                              ; preds = %155
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 3
  %166 = load i32, i32* %165, align 4
  %167 = call i64 @XFilterEvent(%struct.TYPE_10__* %7, i32 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %164
  br label %150

170:                                              ; preds = %164
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 6
  %174 = load i32, i32* %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 3
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @nk_xlib_handle_event(i32 %172, i32 %174, i32 %176, %struct.TYPE_10__* %7)
  br label %150

178:                                              ; preds = %150
  %179 = load %struct.nk_context*, %struct.nk_context** %6, align 8
  %180 = call i32 @nk_input_end(%struct.nk_context* %179)
  %181 = load %struct.nk_context*, %struct.nk_context** %6, align 8
  %182 = call i32 @nk_rect(i32 50, i32 50, i32 200, i32 200)
  %183 = load i32, i32* @NK_WINDOW_BORDER, align 4
  %184 = load i32, i32* @NK_WINDOW_MOVABLE, align 4
  %185 = or i32 %183, %184
  %186 = load i32, i32* @NK_WINDOW_SCALABLE, align 4
  %187 = or i32 %185, %186
  %188 = load i32, i32* @NK_WINDOW_CLOSABLE, align 4
  %189 = or i32 %187, %188
  %190 = load i32, i32* @NK_WINDOW_MINIMIZABLE, align 4
  %191 = or i32 %189, %190
  %192 = load i32, i32* @NK_WINDOW_TITLE, align 4
  %193 = or i32 %191, %192
  %194 = call i64 @nk_begin(%struct.nk_context* %181, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %182, i32 %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %228

196:                                              ; preds = %178
  %197 = load %struct.nk_context*, %struct.nk_context** %6, align 8
  %198 = call i32 @nk_layout_row_static(%struct.nk_context* %197, i32 30, i32 80, i32 1)
  %199 = load %struct.nk_context*, %struct.nk_context** %6, align 8
  %200 = call i64 @nk_button_label(%struct.nk_context* %199, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %205

202:                                              ; preds = %196
  %203 = load i32, i32* @stdout, align 4
  %204 = call i32 @fprintf(i32 %203, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  br label %205

205:                                              ; preds = %202, %196
  %206 = load %struct.nk_context*, %struct.nk_context** %6, align 8
  %207 = call i32 @nk_layout_row_dynamic(%struct.nk_context* %206, i32 30, i32 2)
  %208 = load %struct.nk_context*, %struct.nk_context** %6, align 8
  %209 = load i32, i32* @main.op, align 4
  %210 = icmp eq i32 %209, 0
  %211 = zext i1 %210 to i32
  %212 = call i64 @nk_option_label(%struct.nk_context* %208, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %205
  store i32 0, i32* @main.op, align 4
  br label %215

215:                                              ; preds = %214, %205
  %216 = load %struct.nk_context*, %struct.nk_context** %6, align 8
  %217 = load i32, i32* @main.op, align 4
  %218 = icmp eq i32 %217, 1
  %219 = zext i1 %218 to i32
  %220 = call i64 @nk_option_label(%struct.nk_context* %216, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %215
  store i32 1, i32* @main.op, align 4
  br label %223

223:                                              ; preds = %222, %215
  %224 = load %struct.nk_context*, %struct.nk_context** %6, align 8
  %225 = call i32 @nk_layout_row_dynamic(%struct.nk_context* %224, i32 25, i32 1)
  %226 = load %struct.nk_context*, %struct.nk_context** %6, align 8
  %227 = call i32 @nk_property_int(%struct.nk_context* %226, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i32 0, i32* @main.property, i32 100, i32 10, i32 1)
  br label %228

228:                                              ; preds = %223, %178
  %229 = load %struct.nk_context*, %struct.nk_context** %6, align 8
  %230 = call i32 @nk_end(%struct.nk_context* %229)
  %231 = load %struct.nk_context*, %struct.nk_context** %6, align 8
  %232 = call i64 @nk_window_is_hidden(%struct.nk_context* %231, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %235

234:                                              ; preds = %228
  br label %260

235:                                              ; preds = %228
  %236 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 2
  %237 = load i32, i32* %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 3
  %239 = load i32, i32* %238, align 4
  %240 = call i32 @XClearWindow(i32 %237, i32 %239)
  %241 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 3
  %242 = load i32, i32* %241, align 4
  %243 = call i32 @nk_rgb(i32 30, i32 30, i32 30)
  %244 = call i32 @nk_xlib_render(i32 %242, i32 %243)
  %245 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 2
  %246 = load i32, i32* %245, align 8
  %247 = call i32 @XFlush(i32 %246)
  %248 = call i64 (...) @timestamp()
  %249 = load i64, i64* %3, align 8
  %250 = sub nsw i64 %248, %249
  store i64 %250, i64* %2, align 8
  %251 = load i64, i64* %2, align 8
  %252 = load i64, i64* @DTIME, align 8
  %253 = icmp slt i64 %251, %252
  br i1 %253, label %254, label %259

254:                                              ; preds = %235
  %255 = load i64, i64* @DTIME, align 8
  %256 = load i64, i64* %2, align 8
  %257 = sub nsw i64 %255, %256
  %258 = call i32 @sleep_for(i64 %257)
  br label %259

259:                                              ; preds = %254, %235
  br label %143

260:                                              ; preds = %234, %143
  br label %261

261:                                              ; preds = %260, %163
  %262 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 2
  %263 = load i32, i32* %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 5
  %265 = load i32, i32* %264, align 4
  %266 = call i32 @nk_xfont_del(i32 %263, i32 %265)
  %267 = call i32 (...) @nk_xlib_shutdown()
  %268 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 2
  %269 = load i32, i32* %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 3
  %271 = load i32, i32* %270, align 4
  %272 = call i32 @XUnmapWindow(i32 %269, i32 %271)
  %273 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 2
  %274 = load i32, i32* %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 4
  %276 = load i32, i32* %275, align 8
  %277 = call i32 @XFreeColormap(i32 %274, i32 %276)
  %278 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 2
  %279 = load i32, i32* %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 3
  %281 = load i32, i32* %280, align 4
  %282 = call i32 @XDestroyWindow(i32 %279, i32 %281)
  %283 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 2
  %284 = load i32, i32* %283, align 8
  %285 = call i32 @XCloseDisplay(i32 %284)
  ret i32 0
}

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @XOpenDisplay(i32*) #1

declare dso_local i32 @die(i8*) #1

declare dso_local i32 @DefaultRootWindow(i32) #1

declare dso_local i32 @XDefaultScreen(i32) #1

declare dso_local i32 @XDefaultVisual(i32, i32) #1

declare dso_local i32 @XCreateColormap(i32, i32, i32, i32) #1

declare dso_local i32 @XCreateWindow(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_12__*) #1

declare dso_local i32 @XDefaultDepth(i32, i32) #1

declare dso_local i32 @XStoreName(i32, i32, i8*) #1

declare dso_local i32 @XMapWindow(i32, i32) #1

declare dso_local i32 @XInternAtom(i32, i8*, i32) #1

declare dso_local i32 @XSetWMProtocols(i32, i32, i32*, i32) #1

declare dso_local i32 @XGetWindowAttributes(i32, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @nk_xfont_create(i32, i8*) #1

declare dso_local %struct.nk_context* @nk_xlib_init(i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @timestamp(...) #1

declare dso_local i32 @nk_input_begin(%struct.nk_context*) #1

declare dso_local i64 @XPending(i32) #1

declare dso_local i32 @XNextEvent(i32, %struct.TYPE_10__*) #1

declare dso_local i64 @XFilterEvent(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @nk_xlib_handle_event(i32, i32, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @nk_input_end(%struct.nk_context*) #1

declare dso_local i64 @nk_begin(%struct.nk_context*, i8*, i32, i32) #1

declare dso_local i32 @nk_rect(i32, i32, i32, i32) #1

declare dso_local i32 @nk_layout_row_static(%struct.nk_context*, i32, i32, i32) #1

declare dso_local i64 @nk_button_label(%struct.nk_context*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @nk_layout_row_dynamic(%struct.nk_context*, i32, i32) #1

declare dso_local i64 @nk_option_label(%struct.nk_context*, i8*, i32) #1

declare dso_local i32 @nk_property_int(%struct.nk_context*, i8*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @nk_end(%struct.nk_context*) #1

declare dso_local i64 @nk_window_is_hidden(%struct.nk_context*, i8*) #1

declare dso_local i32 @XClearWindow(i32, i32) #1

declare dso_local i32 @nk_xlib_render(i32, i32) #1

declare dso_local i32 @nk_rgb(i32, i32, i32) #1

declare dso_local i32 @XFlush(i32) #1

declare dso_local i32 @sleep_for(i64) #1

declare dso_local i32 @nk_xfont_del(i32, i32) #1

declare dso_local i32 @nk_xlib_shutdown(...) #1

declare dso_local i32 @XUnmapWindow(i32, i32) #1

declare dso_local i32 @XFreeColormap(i32, i32) #1

declare dso_local i32 @XDestroyWindow(i32, i32) #1

declare dso_local i32 @XCloseDisplay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
