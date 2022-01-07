; ModuleID = '/home/carl/AnghaBench/nuklear/demo/x11_rawfb/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/nuklear/demo/x11_rawfb/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_7__, i32, %struct.TYPE_6__, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i64, i64 }
%struct.rawfb_context = type { i32 }

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
@EnterWindowMask = common dso_local global i32 0, align 4
@LeaveWindowMask = common dso_local global i32 0, align 4
@WINDOW_WIDTH = common dso_local global i32 0, align 4
@WINDOW_HEIGHT = common dso_local global i32 0, align 4
@InputOutput = common dso_local global i32 0, align 4
@CWEventMask = common dso_local global i32 0, align 4
@CWColormap = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"X11\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Demo\00", align 1
@NK_WINDOW_BORDER = common dso_local global i32 0, align 4
@NK_WINDOW_MOVABLE = common dso_local global i32 0, align 4
@NK_WINDOW_CLOSABLE = common dso_local global i32 0, align 4
@NK_WINDOW_MINIMIZABLE = common dso_local global i32 0, align 4
@NK_WINDOW_TITLE = common dso_local global i32 0, align 4
@main.op = internal global i32 0, align 4
@main.property = internal global i32 20, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"button\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"button pressed\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"easy\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"hard\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"Compression:\00", align 1
@DTIME = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__, align 8
  %7 = alloca %struct.rawfb_context*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [262144 x i8], align 16
  %11 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 1, i32* %4, align 4
  store i8* null, i8** %8, align 8
  %12 = call i32 @memset(%struct.TYPE_5__* %6, i32 0, i32 64)
  %13 = call i32 @XOpenDisplay(i32* null)
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 2
  store i32 %13, i32* %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %0
  %19 = call i32 @die(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @DefaultRootWindow(i32 %22)
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 9
  store i32 %23, i32* %24, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @XDefaultScreen(i32 %26)
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 5
  store i32 %27, i32* %28, align 4
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 5
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @XDefaultVisual(i32 %30, i32 %32)
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 7
  store i32 %33, i32* %34, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 9
  %38 = load i32, i32* %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 7
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @AllocNone, align 4
  %42 = call i32 @XCreateColormap(i32 %36, i32 %38, i32 %40, i32 %41)
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 4
  store i32 %42, i32* %43, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 6
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @ExposureMask, align 4
  %49 = load i32, i32* @KeyPressMask, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @KeyReleaseMask, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @ButtonPress, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @ButtonReleaseMask, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @ButtonMotionMask, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @Button1MotionMask, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @Button3MotionMask, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @Button4MotionMask, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @Button5MotionMask, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @PointerMotionMask, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @KeymapStateMask, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @EnterWindowMask, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @LeaveWindowMask, align 4
  %74 = or i32 %72, %73
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 6
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 9
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @WINDOW_WIDTH, align 4
  %82 = load i32, i32* @WINDOW_HEIGHT, align 4
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 5
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @XDefaultDepth(i32 %84, i32 %86)
  %88 = load i32, i32* @InputOutput, align 4
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 7
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @CWEventMask, align 4
  %92 = load i32, i32* @CWColormap, align 4
  %93 = or i32 %91, %92
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 6
  %95 = call i32 @XCreateWindow(i32 %78, i32 %80, i32 0, i32 0, i32 %81, i32 %82, i32 0, i32 %87, i32 %88, i32 %90, i32 %93, %struct.TYPE_7__* %94)
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 3
  store i32 %95, i32* %96, align 4
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @XStoreName(i32 %98, i32 %100, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @XMapWindow(i32 %103, i32 %105)
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 8
  %112 = call i32 @XGetWindowAttributes(i32 %108, i32 %110, %struct.TYPE_6__* %111)
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = trunc i64 %115 to i32
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  store i32 %116, i32* %117, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = trunc i64 %120 to i32
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  store i32 %121, i32* %122, align 4
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 7
  %126 = load i32, i32* %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 5
  %128 = load i32, i32* %127, align 4
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @nk_xlib_init(i32 %124, i32 %126, i32 %128, i32 %130, i32 %132, i32 %134, i8** %8, i32* %9)
  store i32 %135, i32* %5, align 4
  %136 = load i32, i32* %5, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %20
  %139 = load i8*, i8** %8, align 8
  %140 = icmp ne i8* %139, null
  br i1 %140, label %142, label %141

141:                                              ; preds = %138, %20
  store i32 0, i32* %1, align 4
  br label %306

142:                                              ; preds = %138
  %143 = load i8*, i8** %8, align 8
  %144 = getelementptr inbounds [262144 x i8], [262144 x i8]* %10, i64 0, i64 0
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = mul i32 %150, 4
  %152 = load i32, i32* %9, align 4
  %153 = call %struct.rawfb_context* @nk_rawfb_init(i8* %143, i8* %144, i32 %146, i32 %148, i32 %151, i32 %152)
  store %struct.rawfb_context* %153, %struct.rawfb_context** %7, align 8
  %154 = load %struct.rawfb_context*, %struct.rawfb_context** %7, align 8
  %155 = icmp ne %struct.rawfb_context* %154, null
  br i1 %155, label %157, label %156

156:                                              ; preds = %142
  store i32 0, i32* %4, align 4
  br label %157

157:                                              ; preds = %156, %142
  br label %158

158:                                              ; preds = %283, %157
  %159 = load i32, i32* %4, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %284

161:                                              ; preds = %158
  %162 = call i64 (...) @timestamp()
  store i64 %162, i64* %3, align 8
  %163 = load %struct.rawfb_context*, %struct.rawfb_context** %7, align 8
  %164 = getelementptr inbounds %struct.rawfb_context, %struct.rawfb_context* %163, i32 0, i32 0
  %165 = call i32 @nk_input_begin(i32* %164)
  br label %166

166:                                              ; preds = %182, %181, %161
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 3
  %170 = load i32, i32* %169, align 4
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 6
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = call i64 @XCheckWindowEvent(i32 %168, i32 %170, i32 %173, i32* %11)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %191

176:                                              ; preds = %166
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 3
  %178 = load i32, i32* %177, align 4
  %179 = call i64 @XFilterEvent(i32* %11, i32 %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %176
  br label %166

182:                                              ; preds = %176
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 5
  %186 = load i32, i32* %185, align 4
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 3
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.rawfb_context*, %struct.rawfb_context** %7, align 8
  %190 = call i32 @nk_xlib_handle_event(i32 %184, i32 %186, i32 %188, i32* %11, %struct.rawfb_context* %189)
  br label %166

191:                                              ; preds = %166
  %192 = load %struct.rawfb_context*, %struct.rawfb_context** %7, align 8
  %193 = getelementptr inbounds %struct.rawfb_context, %struct.rawfb_context* %192, i32 0, i32 0
  %194 = call i32 @nk_input_end(i32* %193)
  %195 = load %struct.rawfb_context*, %struct.rawfb_context** %7, align 8
  %196 = getelementptr inbounds %struct.rawfb_context, %struct.rawfb_context* %195, i32 0, i32 0
  %197 = call i32 @nk_rect(i32 50, i32 50, i32 200, i32 200)
  %198 = load i32, i32* @NK_WINDOW_BORDER, align 4
  %199 = load i32, i32* @NK_WINDOW_MOVABLE, align 4
  %200 = or i32 %198, %199
  %201 = load i32, i32* @NK_WINDOW_CLOSABLE, align 4
  %202 = or i32 %200, %201
  %203 = load i32, i32* @NK_WINDOW_MINIMIZABLE, align 4
  %204 = or i32 %202, %203
  %205 = load i32, i32* @NK_WINDOW_TITLE, align 4
  %206 = or i32 %204, %205
  %207 = call i64 @nk_begin(i32* %196, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %197, i32 %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %248

209:                                              ; preds = %191
  %210 = load %struct.rawfb_context*, %struct.rawfb_context** %7, align 8
  %211 = getelementptr inbounds %struct.rawfb_context, %struct.rawfb_context* %210, i32 0, i32 0
  %212 = call i32 @nk_layout_row_static(i32* %211, i32 30, i32 80, i32 1)
  %213 = load %struct.rawfb_context*, %struct.rawfb_context** %7, align 8
  %214 = getelementptr inbounds %struct.rawfb_context, %struct.rawfb_context* %213, i32 0, i32 0
  %215 = call i64 @nk_button_label(i32* %214, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %220

217:                                              ; preds = %209
  %218 = load i32, i32* @stdout, align 4
  %219 = call i32 @fprintf(i32 %218, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  br label %220

220:                                              ; preds = %217, %209
  %221 = load %struct.rawfb_context*, %struct.rawfb_context** %7, align 8
  %222 = getelementptr inbounds %struct.rawfb_context, %struct.rawfb_context* %221, i32 0, i32 0
  %223 = call i32 @nk_layout_row_dynamic(i32* %222, i32 30, i32 2)
  %224 = load %struct.rawfb_context*, %struct.rawfb_context** %7, align 8
  %225 = getelementptr inbounds %struct.rawfb_context, %struct.rawfb_context* %224, i32 0, i32 0
  %226 = load i32, i32* @main.op, align 4
  %227 = icmp eq i32 %226, 0
  %228 = zext i1 %227 to i32
  %229 = call i64 @nk_option_label(i32* %225, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %228)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %220
  store i32 0, i32* @main.op, align 4
  br label %232

232:                                              ; preds = %231, %220
  %233 = load %struct.rawfb_context*, %struct.rawfb_context** %7, align 8
  %234 = getelementptr inbounds %struct.rawfb_context, %struct.rawfb_context* %233, i32 0, i32 0
  %235 = load i32, i32* @main.op, align 4
  %236 = icmp eq i32 %235, 1
  %237 = zext i1 %236 to i32
  %238 = call i64 @nk_option_label(i32* %234, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %237)
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %241

240:                                              ; preds = %232
  store i32 1, i32* @main.op, align 4
  br label %241

241:                                              ; preds = %240, %232
  %242 = load %struct.rawfb_context*, %struct.rawfb_context** %7, align 8
  %243 = getelementptr inbounds %struct.rawfb_context, %struct.rawfb_context* %242, i32 0, i32 0
  %244 = call i32 @nk_layout_row_dynamic(i32* %243, i32 25, i32 1)
  %245 = load %struct.rawfb_context*, %struct.rawfb_context** %7, align 8
  %246 = getelementptr inbounds %struct.rawfb_context, %struct.rawfb_context* %245, i32 0, i32 0
  %247 = call i32 @nk_property_int(i32* %246, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i32 0, i32* @main.property, i32 100, i32 10, i32 1)
  br label %248

248:                                              ; preds = %241, %191
  %249 = load %struct.rawfb_context*, %struct.rawfb_context** %7, align 8
  %250 = getelementptr inbounds %struct.rawfb_context, %struct.rawfb_context* %249, i32 0, i32 0
  %251 = call i32 @nk_end(i32* %250)
  %252 = load %struct.rawfb_context*, %struct.rawfb_context** %7, align 8
  %253 = getelementptr inbounds %struct.rawfb_context, %struct.rawfb_context* %252, i32 0, i32 0
  %254 = call i64 @nk_window_is_closed(i32* %253, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %257

256:                                              ; preds = %248
  br label %284

257:                                              ; preds = %248
  %258 = load %struct.rawfb_context*, %struct.rawfb_context** %7, align 8
  %259 = call i32 @nk_rgb(i32 30, i32 30, i32 30)
  %260 = call i32 @nk_rawfb_render(%struct.rawfb_context* %258, i32 %259, i32 1)
  %261 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 2
  %262 = load i32, i32* %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 3
  %264 = load i32, i32* %263, align 4
  %265 = call i32 @XClearWindow(i32 %262, i32 %264)
  %266 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 3
  %267 = load i32, i32* %266, align 4
  %268 = call i32 @nk_xlib_render(i32 %267)
  %269 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 2
  %270 = load i32, i32* %269, align 8
  %271 = call i32 @XFlush(i32 %270)
  %272 = call i64 (...) @timestamp()
  %273 = load i64, i64* %3, align 8
  %274 = sub nsw i64 %272, %273
  store i64 %274, i64* %2, align 8
  %275 = load i64, i64* %2, align 8
  %276 = load i64, i64* @DTIME, align 8
  %277 = icmp slt i64 %275, %276
  br i1 %277, label %278, label %283

278:                                              ; preds = %257
  %279 = load i64, i64* @DTIME, align 8
  %280 = load i64, i64* %2, align 8
  %281 = sub nsw i64 %279, %280
  %282 = call i32 @sleep_for(i64 %281)
  br label %283

283:                                              ; preds = %278, %257
  br label %158

284:                                              ; preds = %256, %158
  %285 = load %struct.rawfb_context*, %struct.rawfb_context** %7, align 8
  %286 = call i32 @nk_rawfb_shutdown(%struct.rawfb_context* %285)
  %287 = call i32 (...) @nk_xlib_shutdown()
  %288 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 2
  %289 = load i32, i32* %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 3
  %291 = load i32, i32* %290, align 4
  %292 = call i32 @XUnmapWindow(i32 %289, i32 %291)
  %293 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 2
  %294 = load i32, i32* %293, align 8
  %295 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 4
  %296 = load i32, i32* %295, align 8
  %297 = call i32 @XFreeColormap(i32 %294, i32 %296)
  %298 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 2
  %299 = load i32, i32* %298, align 8
  %300 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 3
  %301 = load i32, i32* %300, align 4
  %302 = call i32 @XDestroyWindow(i32 %299, i32 %301)
  %303 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 2
  %304 = load i32, i32* %303, align 8
  %305 = call i32 @XCloseDisplay(i32 %304)
  store i32 0, i32* %1, align 4
  br label %306

306:                                              ; preds = %284, %141
  %307 = load i32, i32* %1, align 4
  ret i32 %307
}

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @XOpenDisplay(i32*) #1

declare dso_local i32 @die(i8*) #1

declare dso_local i32 @DefaultRootWindow(i32) #1

declare dso_local i32 @XDefaultScreen(i32) #1

declare dso_local i32 @XDefaultVisual(i32, i32) #1

declare dso_local i32 @XCreateColormap(i32, i32, i32, i32) #1

declare dso_local i32 @XCreateWindow(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @XDefaultDepth(i32, i32) #1

declare dso_local i32 @XStoreName(i32, i32, i8*) #1

declare dso_local i32 @XMapWindow(i32, i32) #1

declare dso_local i32 @XGetWindowAttributes(i32, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @nk_xlib_init(i32, i32, i32, i32, i32, i32, i8**, i32*) #1

declare dso_local %struct.rawfb_context* @nk_rawfb_init(i8*, i8*, i32, i32, i32, i32) #1

declare dso_local i64 @timestamp(...) #1

declare dso_local i32 @nk_input_begin(i32*) #1

declare dso_local i64 @XCheckWindowEvent(i32, i32, i32, i32*) #1

declare dso_local i64 @XFilterEvent(i32*, i32) #1

declare dso_local i32 @nk_xlib_handle_event(i32, i32, i32, i32*, %struct.rawfb_context*) #1

declare dso_local i32 @nk_input_end(i32*) #1

declare dso_local i64 @nk_begin(i32*, i8*, i32, i32) #1

declare dso_local i32 @nk_rect(i32, i32, i32, i32) #1

declare dso_local i32 @nk_layout_row_static(i32*, i32, i32, i32) #1

declare dso_local i64 @nk_button_label(i32*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @nk_layout_row_dynamic(i32*, i32, i32) #1

declare dso_local i64 @nk_option_label(i32*, i8*, i32) #1

declare dso_local i32 @nk_property_int(i32*, i8*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @nk_end(i32*) #1

declare dso_local i64 @nk_window_is_closed(i32*, i8*) #1

declare dso_local i32 @nk_rawfb_render(%struct.rawfb_context*, i32, i32) #1

declare dso_local i32 @nk_rgb(i32, i32, i32) #1

declare dso_local i32 @XClearWindow(i32, i32) #1

declare dso_local i32 @nk_xlib_render(i32) #1

declare dso_local i32 @XFlush(i32) #1

declare dso_local i32 @sleep_for(i64) #1

declare dso_local i32 @nk_rawfb_shutdown(%struct.rawfb_context*) #1

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
