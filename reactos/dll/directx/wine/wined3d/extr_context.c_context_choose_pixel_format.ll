; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_choose_pixel_format.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_choose_pixel_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_device = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, %struct.wined3d_pixel_format* }
%struct.wined3d_pixel_format = type { i64, i64, i64, i64, i64, i64, i64, i32, i64, i64, i64, i64 }
%struct.wined3d_format = type { i64, i64, i64, i64, i64, i64, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i64, i64, i64, i64, i32, i32 }

@.str = private unnamed_addr constant [67 x i8] c"device %p, dc %p, color_format %s, ds_format %s, aux_buffers %#x.\0A\00", align 1
@WGL_TYPE_RGBA_ARB = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [75 x i8] c"Trying to locate a compatible pixel format because an exact match failed.\0A\00", align 1
@PFD_SUPPORT_OPENGL = common dso_local global i32 0, align 4
@PFD_DOUBLEBUFFER = common dso_local global i32 0, align 4
@PFD_DRAW_TO_WINDOW = common dso_local global i32 0, align 4
@PFD_TYPE_RGBA = common dso_local global i32 0, align 4
@PFD_MAIN_PLANE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Can't find a suitable pixel format.\0A\00", align 1
@.str.3 = private unnamed_addr constant [66 x i8] c"Found iPixelFormat=%d for ColorFormat=%s, DepthStencilFormat=%s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wined3d_device*, i32, %struct.wined3d_format*, %struct.wined3d_format*, i64)* @context_choose_pixel_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @context_choose_pixel_format(%struct.wined3d_device* %0, i32 %1, %struct.wined3d_format* %2, %struct.wined3d_format* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.wined3d_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.wined3d_format*, align 8
  %10 = alloca %struct.wined3d_format*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_6__, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.wined3d_pixel_format*, align 8
  %18 = alloca i32, align 4
  store %struct.wined3d_device* %0, %struct.wined3d_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.wined3d_format* %2, %struct.wined3d_format** %9, align 8
  store %struct.wined3d_format* %3, %struct.wined3d_format** %10, align 8
  store i64 %4, i64* %11, align 8
  %19 = load %struct.wined3d_device*, %struct.wined3d_device** %7, align 8
  %20 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %12, align 4
  store i32 0, i32* %15, align 4
  %24 = load %struct.wined3d_device*, %struct.wined3d_device** %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.wined3d_format*, %struct.wined3d_format** %9, align 8
  %27 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @debug_d3dformat(i32 %28)
  %30 = load %struct.wined3d_format*, %struct.wined3d_format** %10, align 8
  %31 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @debug_d3dformat(i32 %32)
  %34 = load i64, i64* %11, align 8
  %35 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), %struct.wined3d_device* %24, i32 %25, i32 %29, i32 %33, i64 %34)
  store i32 0, i32* %13, align 4
  store i32 0, i32* %16, align 4
  br label %36

36:                                               ; preds = %212, %5
  %37 = load i32, i32* %16, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %40, label %215

40:                                               ; preds = %36
  %41 = load %struct.wined3d_device*, %struct.wined3d_device** %7, align 8
  %42 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %41, i32 0, i32 0
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load %struct.wined3d_pixel_format*, %struct.wined3d_pixel_format** %44, align 8
  %46 = load i32, i32* %16, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.wined3d_pixel_format, %struct.wined3d_pixel_format* %45, i64 %47
  store %struct.wined3d_pixel_format* %48, %struct.wined3d_pixel_format** %17, align 8
  %49 = load %struct.wined3d_pixel_format*, %struct.wined3d_pixel_format** %17, align 8
  %50 = getelementptr inbounds %struct.wined3d_pixel_format, %struct.wined3d_pixel_format* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @WGL_TYPE_RGBA_ARB, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %40
  br label %212

55:                                               ; preds = %40
  %56 = load %struct.wined3d_pixel_format*, %struct.wined3d_pixel_format** %17, align 8
  %57 = getelementptr inbounds %struct.wined3d_pixel_format, %struct.wined3d_pixel_format* %56, i32 0, i32 11
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load %struct.wined3d_pixel_format*, %struct.wined3d_pixel_format** %17, align 8
  %62 = getelementptr inbounds %struct.wined3d_pixel_format, %struct.wined3d_pixel_format* %61, i32 0, i32 10
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %60, %55
  br label %212

66:                                               ; preds = %60
  %67 = load %struct.wined3d_pixel_format*, %struct.wined3d_pixel_format** %17, align 8
  %68 = getelementptr inbounds %struct.wined3d_pixel_format, %struct.wined3d_pixel_format* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.wined3d_format*, %struct.wined3d_format** %9, align 8
  %71 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp slt i64 %69, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %66
  br label %212

75:                                               ; preds = %66
  %76 = load %struct.wined3d_pixel_format*, %struct.wined3d_pixel_format** %17, align 8
  %77 = getelementptr inbounds %struct.wined3d_pixel_format, %struct.wined3d_pixel_format* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.wined3d_format*, %struct.wined3d_format** %9, align 8
  %80 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp slt i64 %78, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %75
  br label %212

84:                                               ; preds = %75
  %85 = load %struct.wined3d_pixel_format*, %struct.wined3d_pixel_format** %17, align 8
  %86 = getelementptr inbounds %struct.wined3d_pixel_format, %struct.wined3d_pixel_format* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.wined3d_format*, %struct.wined3d_format** %9, align 8
  %89 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = icmp slt i64 %87, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %84
  br label %212

93:                                               ; preds = %84
  %94 = load %struct.wined3d_pixel_format*, %struct.wined3d_pixel_format** %17, align 8
  %95 = getelementptr inbounds %struct.wined3d_pixel_format, %struct.wined3d_pixel_format* %94, i32 0, i32 4
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.wined3d_format*, %struct.wined3d_format** %9, align 8
  %98 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = icmp slt i64 %96, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %93
  br label %212

102:                                              ; preds = %93
  %103 = load %struct.wined3d_pixel_format*, %struct.wined3d_pixel_format** %17, align 8
  %104 = getelementptr inbounds %struct.wined3d_pixel_format, %struct.wined3d_pixel_format* %103, i32 0, i32 5
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.wined3d_format*, %struct.wined3d_format** %10, align 8
  %107 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %106, i32 0, i32 4
  %108 = load i64, i64* %107, align 8
  %109 = icmp slt i64 %105, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %102
  br label %212

111:                                              ; preds = %102
  %112 = load %struct.wined3d_format*, %struct.wined3d_format** %10, align 8
  %113 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %112, i32 0, i32 5
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %125

116:                                              ; preds = %111
  %117 = load %struct.wined3d_pixel_format*, %struct.wined3d_pixel_format** %17, align 8
  %118 = getelementptr inbounds %struct.wined3d_pixel_format, %struct.wined3d_pixel_format* %117, i32 0, i32 6
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.wined3d_format*, %struct.wined3d_format** %10, align 8
  %121 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %120, i32 0, i32 5
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %119, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %116
  br label %212

125:                                              ; preds = %116, %111
  %126 = load %struct.wined3d_pixel_format*, %struct.wined3d_pixel_format** %17, align 8
  %127 = getelementptr inbounds %struct.wined3d_pixel_format, %struct.wined3d_pixel_format* %126, i32 0, i32 9
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %125
  br label %212

131:                                              ; preds = %125
  store i32 1, i32* %18, align 4
  %132 = load %struct.wined3d_pixel_format*, %struct.wined3d_pixel_format** %17, align 8
  %133 = getelementptr inbounds %struct.wined3d_pixel_format, %struct.wined3d_pixel_format* %132, i32 0, i32 5
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.wined3d_format*, %struct.wined3d_format** %10, align 8
  %136 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %135, i32 0, i32 4
  %137 = load i64, i64* %136, align 8
  %138 = icmp eq i64 %134, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %131
  %140 = load i32, i32* %18, align 4
  %141 = add i32 %140, 1
  store i32 %141, i32* %18, align 4
  br label %142

142:                                              ; preds = %139, %131
  %143 = load %struct.wined3d_pixel_format*, %struct.wined3d_pixel_format** %17, align 8
  %144 = getelementptr inbounds %struct.wined3d_pixel_format, %struct.wined3d_pixel_format* %143, i32 0, i32 6
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.wined3d_format*, %struct.wined3d_format** %10, align 8
  %147 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %146, i32 0, i32 5
  %148 = load i64, i64* %147, align 8
  %149 = icmp eq i64 %145, %148
  br i1 %149, label %150, label %153

150:                                              ; preds = %142
  %151 = load i32, i32* %18, align 4
  %152 = add i32 %151, 2
  store i32 %152, i32* %18, align 4
  br label %153

153:                                              ; preds = %150, %142
  %154 = load %struct.wined3d_pixel_format*, %struct.wined3d_pixel_format** %17, align 8
  %155 = getelementptr inbounds %struct.wined3d_pixel_format, %struct.wined3d_pixel_format* %154, i32 0, i32 4
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.wined3d_format*, %struct.wined3d_format** %9, align 8
  %158 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %157, i32 0, i32 3
  %159 = load i64, i64* %158, align 8
  %160 = icmp eq i64 %156, %159
  br i1 %160, label %161, label %164

161:                                              ; preds = %153
  %162 = load i32, i32* %18, align 4
  %163 = add i32 %162, 4
  store i32 %163, i32* %18, align 4
  br label %164

164:                                              ; preds = %161, %153
  %165 = load i64, i64* %11, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %175

167:                                              ; preds = %164
  %168 = load %struct.wined3d_pixel_format*, %struct.wined3d_pixel_format** %17, align 8
  %169 = getelementptr inbounds %struct.wined3d_pixel_format, %struct.wined3d_pixel_format* %168, i32 0, i32 8
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %167
  %173 = load i32, i32* %18, align 4
  %174 = add i32 %173, 8
  store i32 %174, i32* %18, align 4
  br label %175

175:                                              ; preds = %172, %167, %164
  %176 = load %struct.wined3d_pixel_format*, %struct.wined3d_pixel_format** %17, align 8
  %177 = getelementptr inbounds %struct.wined3d_pixel_format, %struct.wined3d_pixel_format* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.wined3d_format*, %struct.wined3d_format** %9, align 8
  %180 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = icmp eq i64 %178, %181
  br i1 %182, label %183, label %202

183:                                              ; preds = %175
  %184 = load %struct.wined3d_pixel_format*, %struct.wined3d_pixel_format** %17, align 8
  %185 = getelementptr inbounds %struct.wined3d_pixel_format, %struct.wined3d_pixel_format* %184, i32 0, i32 2
  %186 = load i64, i64* %185, align 8
  %187 = load %struct.wined3d_format*, %struct.wined3d_format** %9, align 8
  %188 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = icmp eq i64 %186, %189
  br i1 %190, label %191, label %202

191:                                              ; preds = %183
  %192 = load %struct.wined3d_pixel_format*, %struct.wined3d_pixel_format** %17, align 8
  %193 = getelementptr inbounds %struct.wined3d_pixel_format, %struct.wined3d_pixel_format* %192, i32 0, i32 3
  %194 = load i64, i64* %193, align 8
  %195 = load %struct.wined3d_format*, %struct.wined3d_format** %9, align 8
  %196 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %195, i32 0, i32 2
  %197 = load i64, i64* %196, align 8
  %198 = icmp eq i64 %194, %197
  br i1 %198, label %199, label %202

199:                                              ; preds = %191
  %200 = load i32, i32* %18, align 4
  %201 = add i32 %200, 16
  store i32 %201, i32* %18, align 4
  br label %202

202:                                              ; preds = %199, %191, %183, %175
  %203 = load i32, i32* %18, align 4
  %204 = load i32, i32* %13, align 4
  %205 = icmp ugt i32 %203, %204
  br i1 %205, label %206, label %211

206:                                              ; preds = %202
  %207 = load %struct.wined3d_pixel_format*, %struct.wined3d_pixel_format** %17, align 8
  %208 = getelementptr inbounds %struct.wined3d_pixel_format, %struct.wined3d_pixel_format* %207, i32 0, i32 7
  %209 = load i32, i32* %208, align 8
  store i32 %209, i32* %15, align 4
  %210 = load i32, i32* %18, align 4
  store i32 %210, i32* %13, align 4
  br label %211

211:                                              ; preds = %206, %202
  br label %212

212:                                              ; preds = %211, %130, %124, %110, %101, %92, %83, %74, %65, %54
  %213 = load i32, i32* %16, align 4
  %214 = add i32 %213, 1
  store i32 %214, i32* %16, align 4
  br label %36

215:                                              ; preds = %36
  %216 = load i32, i32* %15, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %267, label %218

218:                                              ; preds = %215
  %219 = call i32 @ERR(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i64 0, i64 0))
  %220 = call i32 @memset(%struct.TYPE_6__* %14, i32 0, i32 56)
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  store i32 56, i32* %221, align 8
  %222 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  store i32 1, i32* %222, align 4
  %223 = load i32, i32* @PFD_SUPPORT_OPENGL, align 4
  %224 = load i32, i32* @PFD_DOUBLEBUFFER, align 4
  %225 = or i32 %223, %224
  %226 = load i32, i32* @PFD_DRAW_TO_WINDOW, align 4
  %227 = or i32 %225, %226
  %228 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 2
  store i32 %227, i32* %228, align 8
  %229 = load i32, i32* @PFD_TYPE_RGBA, align 4
  %230 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 8
  store i32 %229, i32* %230, align 4
  %231 = load %struct.wined3d_format*, %struct.wined3d_format** %9, align 8
  %232 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %231, i32 0, i32 3
  %233 = load i64, i64* %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 3
  store i64 %233, i64* %234, align 8
  %235 = load %struct.wined3d_format*, %struct.wined3d_format** %9, align 8
  %236 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = load %struct.wined3d_format*, %struct.wined3d_format** %9, align 8
  %239 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %238, i32 0, i32 1
  %240 = load i64, i64* %239, align 8
  %241 = add nsw i64 %237, %240
  %242 = load %struct.wined3d_format*, %struct.wined3d_format** %9, align 8
  %243 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %242, i32 0, i32 2
  %244 = load i64, i64* %243, align 8
  %245 = add nsw i64 %241, %244
  %246 = load %struct.wined3d_format*, %struct.wined3d_format** %9, align 8
  %247 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %246, i32 0, i32 3
  %248 = load i64, i64* %247, align 8
  %249 = add nsw i64 %245, %248
  %250 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 4
  store i64 %249, i64* %250, align 8
  %251 = load %struct.wined3d_format*, %struct.wined3d_format** %10, align 8
  %252 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %251, i32 0, i32 4
  %253 = load i64, i64* %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 5
  store i64 %253, i64* %254, align 8
  %255 = load %struct.wined3d_format*, %struct.wined3d_format** %10, align 8
  %256 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %255, i32 0, i32 5
  %257 = load i64, i64* %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 6
  store i64 %257, i64* %258, align 8
  %259 = load i32, i32* @PFD_MAIN_PLANE, align 4
  %260 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 7
  store i32 %259, i32* %260, align 8
  %261 = load i32, i32* %8, align 4
  %262 = call i32 @ChoosePixelFormat(i32 %261, %struct.TYPE_6__* %14)
  store i32 %262, i32* %15, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %266, label %264

264:                                              ; preds = %218
  %265 = call i32 @ERR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %279

266:                                              ; preds = %218
  br label %267

267:                                              ; preds = %266, %215
  %268 = load i32, i32* %15, align 4
  %269 = load %struct.wined3d_format*, %struct.wined3d_format** %9, align 8
  %270 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %269, i32 0, i32 6
  %271 = load i32, i32* %270, align 8
  %272 = call i32 @debug_d3dformat(i32 %271)
  %273 = load %struct.wined3d_format*, %struct.wined3d_format** %10, align 8
  %274 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %273, i32 0, i32 6
  %275 = load i32, i32* %274, align 8
  %276 = call i32 @debug_d3dformat(i32 %275)
  %277 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.3, i64 0, i64 0), i32 %268, i32 %272, i32 %276)
  %278 = load i32, i32* %15, align 4
  store i32 %278, i32* %6, align 4
  br label %279

279:                                              ; preds = %267, %264
  %280 = load i32, i32* %6, align 4
  ret i32 %280
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @debug_d3dformat(i32) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @ChoosePixelFormat(i32, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
