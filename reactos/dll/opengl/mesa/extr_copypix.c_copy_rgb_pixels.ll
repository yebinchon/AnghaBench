; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_copypix.c_copy_rgb_pixels.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_copypix.c_copy_rgb_pixels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i64, %struct.TYPE_19__, %struct.TYPE_18__*, %struct.TYPE_17__, %struct.TYPE_16__*, %struct.TYPE_20__, %struct.TYPE_22__, %struct.TYPE_21__ }
%struct.TYPE_19__ = type { i32 (%struct.TYPE_23__*, i64, i64, i64, i64*, i64*, i64*, i64*, i32*)*, i32 (%struct.TYPE_23__*, i64)* }
%struct.TYPE_18__ = type { i64, i64 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_16__ = type { i64, i64, i64, i64, i32, i32, i32, i32 }
%struct.TYPE_20__ = type { float, float, double, double, double, double, double, double, double, double, i64, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i64 }
%struct.TYPE_22__ = type { i32* }
%struct.TYPE_21__ = type { i64 }

@GLdepth = common dso_local global i32 0, align 4
@zspan = common dso_local global i64* null, align 8
@MAX_WIDTH = common dso_local global i32 0, align 4
@GLubyte = common dso_local global i32 0, align 4
@red = common dso_local global i64* null, align 8
@green = common dso_local global i64* null, align 8
@blue = common dso_local global i64* null, align 8
@alpha = common dso_local global i64* null, align 8
@GL_FALSE = common dso_local global i32 0, align 4
@GL_TRUE = common dso_local global i32 0, align 4
@DEPTH_SCALE = common dso_local global i32 0, align 4
@GL_BITMAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_23__*, i64, i64, i64, i64, i64, i64)* @copy_rgb_pixels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_rgb_pixels(%struct.TYPE_23__* %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6) #0 {
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  %36 = alloca i64, align 8
  %37 = alloca i64, align 8
  %38 = alloca i64, align 8
  %39 = alloca i64, align 8
  %40 = alloca i64, align 8
  %41 = alloca i64, align 8
  %42 = alloca i64, align 8
  %43 = alloca i64, align 8
  %44 = alloca i64, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  store i64 %6, i64* %14, align 8
  %45 = load i32, i32* @GLdepth, align 4
  %46 = load i64*, i64** @zspan, align 8
  %47 = load i32, i32* @MAX_WIDTH, align 4
  %48 = call i32 @DEFARRAY(i32 %45, i64* %46, i32 %47)
  %49 = load i32, i32* @GLubyte, align 4
  %50 = load i64*, i64** @red, align 8
  %51 = load i32, i32* @MAX_WIDTH, align 4
  %52 = call i32 @DEFARRAY(i32 %49, i64* %50, i32 %51)
  %53 = load i32, i32* @GLubyte, align 4
  %54 = load i64*, i64** @green, align 8
  %55 = load i32, i32* @MAX_WIDTH, align 4
  %56 = call i32 @DEFARRAY(i32 %53, i64* %54, i32 %55)
  %57 = load i32, i32* @GLubyte, align 4
  %58 = load i64*, i64** @blue, align 8
  %59 = load i32, i32* @MAX_WIDTH, align 4
  %60 = call i32 @DEFARRAY(i32 %57, i64* %58, i32 %59)
  %61 = load i32, i32* @GLubyte, align 4
  %62 = load i64*, i64** @alpha, align 8
  %63 = load i32, i32* @MAX_WIDTH, align 4
  %64 = call i32 @DEFARRAY(i32 %61, i64* %62, i32 %63)
  %65 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %65, i32 0, i32 5
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %66, i32 0, i32 0
  %68 = load float, float* %67, align 8
  %69 = fcmp oeq float %68, 1.000000e+00
  br i1 %69, label %70, label %78

70:                                               ; preds = %7
  %71 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %71, i32 0, i32 5
  %73 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %72, i32 0, i32 1
  %74 = load float, float* %73, align 4
  %75 = fcmp oeq float %74, 1.000000e+00
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = load i32, i32* @GL_FALSE, align 4
  store i32 %77, i32* %17, align 4
  br label %80

78:                                               ; preds = %70, %7
  %79 = load i32, i32* @GL_TRUE, align 4
  store i32 %79, i32* %17, align 4
  br label %80

80:                                               ; preds = %78, %76
  %81 = load i64, i64* %10, align 8
  %82 = load i64, i64* %14, align 8
  %83 = icmp slt i64 %81, %82
  br i1 %83, label %84, label %93

84:                                               ; preds = %80
  %85 = load i64, i64* %10, align 8
  %86 = load i64, i64* %12, align 8
  %87 = add nsw i64 %85, %86
  %88 = sub nsw i64 %87, 1
  store i64 %88, i64* %18, align 8
  %89 = load i64, i64* %14, align 8
  %90 = load i64, i64* %12, align 8
  %91 = add nsw i64 %89, %90
  %92 = sub nsw i64 %91, 1
  store i64 %92, i64* %19, align 8
  store i64 -1, i64* %20, align 8
  br label %96

93:                                               ; preds = %80
  %94 = load i64, i64* %10, align 8
  store i64 %94, i64* %18, align 8
  %95 = load i64, i64* %14, align 8
  store i64 %95, i64* %19, align 8
  store i64 1, i64* %20, align 8
  br label %96

96:                                               ; preds = %93, %84
  %97 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %97, i32 0, i32 5
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %98, i32 0, i32 2
  %100 = load double, double* %99, align 8
  %101 = fcmp une double %100, 1.000000e+00
  br i1 %101, label %144, label %102

102:                                              ; preds = %96
  %103 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %103, i32 0, i32 5
  %105 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %104, i32 0, i32 3
  %106 = load double, double* %105, align 8
  %107 = fcmp une double %106, 0.000000e+00
  br i1 %107, label %144, label %108

108:                                              ; preds = %102
  %109 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %109, i32 0, i32 5
  %111 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %110, i32 0, i32 4
  %112 = load double, double* %111, align 8
  %113 = fcmp une double %112, 1.000000e+00
  br i1 %113, label %144, label %114

114:                                              ; preds = %108
  %115 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %115, i32 0, i32 5
  %117 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %116, i32 0, i32 5
  %118 = load double, double* %117, align 8
  %119 = fcmp une double %118, 0.000000e+00
  br i1 %119, label %144, label %120

120:                                              ; preds = %114
  %121 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %121, i32 0, i32 5
  %123 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %122, i32 0, i32 6
  %124 = load double, double* %123, align 8
  %125 = fcmp une double %124, 1.000000e+00
  br i1 %125, label %144, label %126

126:                                              ; preds = %120
  %127 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %127, i32 0, i32 5
  %129 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %128, i32 0, i32 7
  %130 = load double, double* %129, align 8
  %131 = fcmp une double %130, 0.000000e+00
  br i1 %131, label %144, label %132

132:                                              ; preds = %126
  %133 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %133, i32 0, i32 5
  %135 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %134, i32 0, i32 8
  %136 = load double, double* %135, align 8
  %137 = fcmp une double %136, 1.000000e+00
  br i1 %137, label %144, label %138

138:                                              ; preds = %132
  %139 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %139, i32 0, i32 5
  %141 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %140, i32 0, i32 9
  %142 = load double, double* %141, align 8
  %143 = fcmp une double %142, 0.000000e+00
  br label %144

144:                                              ; preds = %138, %132, %126, %120, %114, %108, %102, %96
  %145 = phi i1 [ true, %132 ], [ true, %126 ], [ true, %120 ], [ true, %114 ], [ true, %108 ], [ true, %102 ], [ true, %96 ], [ %143, %138 ]
  %146 = zext i1 %145 to i32
  store i32 %146, i32* %15, align 4
  %147 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %147, i32 0, i32 7
  %149 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %175

152:                                              ; preds = %144
  %153 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %153, i32 0, i32 6
  %155 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %154, i32 0, i32 0
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 2
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @DEPTH_SCALE, align 4
  %160 = mul nsw i32 %158, %159
  %161 = sext i32 %160 to i64
  store i64 %161, i64* %24, align 8
  store i64 0, i64* %21, align 8
  br label %162

162:                                              ; preds = %171, %152
  %163 = load i64, i64* %21, align 8
  %164 = load i64, i64* %11, align 8
  %165 = icmp slt i64 %163, %164
  br i1 %165, label %166, label %174

166:                                              ; preds = %162
  %167 = load i64, i64* %24, align 8
  %168 = load i64*, i64** @zspan, align 8
  %169 = load i64, i64* %21, align 8
  %170 = getelementptr inbounds i64, i64* %168, i64 %169
  store i64 %167, i64* %170, align 8
  br label %171

171:                                              ; preds = %166
  %172 = load i64, i64* %21, align 8
  %173 = add nsw i64 %172, 1
  store i64 %173, i64* %21, align 8
  br label %162

174:                                              ; preds = %162
  br label %175

175:                                              ; preds = %174, %144
  %176 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %177 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = icmp eq i64 %178, 0
  br i1 %179, label %180, label %198

180:                                              ; preds = %175
  %181 = load i32, i32* %17, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %198, label %183

183:                                              ; preds = %180
  %184 = load i64, i64* %13, align 8
  %185 = icmp sge i64 %184, 0
  br i1 %185, label %186, label %198

186:                                              ; preds = %183
  %187 = load i64, i64* %13, align 8
  %188 = load i64, i64* %11, align 8
  %189 = add nsw i64 %187, %188
  %190 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %191 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %190, i32 0, i32 2
  %192 = load %struct.TYPE_18__*, %struct.TYPE_18__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = icmp sle i64 %189, %194
  br i1 %195, label %196, label %198

196:                                              ; preds = %186
  %197 = load i32, i32* @GL_TRUE, align 4
  store i32 %197, i32* %16, align 4
  br label %200

198:                                              ; preds = %186, %183, %180, %175
  %199 = load i32, i32* @GL_FALSE, align 4
  store i32 %199, i32* %16, align 4
  br label %200

200:                                              ; preds = %198, %196
  %201 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %202 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %201, i32 0, i32 5
  %203 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %202, i32 0, i32 10
  %204 = load i64, i64* %203, align 8
  %205 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %206 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %205, i32 0, i32 3
  %207 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = icmp ne i64 %204, %208
  %210 = zext i1 %209 to i32
  store i32 %210, i32* %23, align 4
  store i64 0, i64* %22, align 8
  br label %211

211:                                              ; preds = %626, %200
  %212 = load i64, i64* %22, align 8
  %213 = load i64, i64* %12, align 8
  %214 = icmp slt i64 %212, %213
  br i1 %214, label %215, label %635

215:                                              ; preds = %211
  %216 = load i32, i32* %23, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %229

218:                                              ; preds = %215
  %219 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %220 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %220, i32 0, i32 1
  %222 = load i32 (%struct.TYPE_23__*, i64)*, i32 (%struct.TYPE_23__*, i64)** %221, align 8
  %223 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %224 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %225 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %224, i32 0, i32 5
  %226 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %225, i32 0, i32 10
  %227 = load i64, i64* %226, align 8
  %228 = call i32 %222(%struct.TYPE_23__* %223, i64 %227)
  br label %229

229:                                              ; preds = %218, %215
  %230 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %231 = load i64, i64* %11, align 8
  %232 = load i64, i64* %9, align 8
  %233 = load i64, i64* %18, align 8
  %234 = load i64*, i64** @red, align 8
  %235 = load i64*, i64** @green, align 8
  %236 = load i64*, i64** @blue, align 8
  %237 = load i64*, i64** @alpha, align 8
  %238 = call i32 @gl_read_color_span(%struct.TYPE_23__* %230, i64 %231, i64 %232, i64 %233, i64* %234, i64* %235, i64* %236, i64* %237)
  %239 = load i32, i32* %15, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %399

241:                                              ; preds = %229
  %242 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %243 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %242, i32 0, i32 5
  %244 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %243, i32 0, i32 3
  %245 = load double, double* %244, align 8
  %246 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %247 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %246, i32 0, i32 4
  %248 = load %struct.TYPE_16__*, %struct.TYPE_16__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = sitofp i64 %250 to double
  %252 = fmul double %245, %251
  %253 = fptosi double %252 to i64
  store i64 %253, i64* %25, align 8
  %254 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %255 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %254, i32 0, i32 5
  %256 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %255, i32 0, i32 5
  %257 = load double, double* %256, align 8
  %258 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %259 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %258, i32 0, i32 4
  %260 = load %struct.TYPE_16__*, %struct.TYPE_16__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %260, i32 0, i32 1
  %262 = load i64, i64* %261, align 8
  %263 = sitofp i64 %262 to double
  %264 = fmul double %257, %263
  %265 = fptosi double %264 to i64
  store i64 %265, i64* %26, align 8
  %266 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %267 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %266, i32 0, i32 5
  %268 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %267, i32 0, i32 7
  %269 = load double, double* %268, align 8
  %270 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %271 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %270, i32 0, i32 4
  %272 = load %struct.TYPE_16__*, %struct.TYPE_16__** %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %272, i32 0, i32 2
  %274 = load i64, i64* %273, align 8
  %275 = sitofp i64 %274 to double
  %276 = fmul double %269, %275
  %277 = fptosi double %276 to i64
  store i64 %277, i64* %27, align 8
  %278 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %279 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %278, i32 0, i32 5
  %280 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %279, i32 0, i32 9
  %281 = load double, double* %280, align 8
  %282 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %283 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %282, i32 0, i32 4
  %284 = load %struct.TYPE_16__*, %struct.TYPE_16__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %284, i32 0, i32 3
  %286 = load i64, i64* %285, align 8
  %287 = sitofp i64 %286 to double
  %288 = fmul double %281, %287
  %289 = fptosi double %288 to i64
  store i64 %289, i64* %28, align 8
  %290 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %291 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %290, i32 0, i32 4
  %292 = load %struct.TYPE_16__*, %struct.TYPE_16__** %291, align 8
  %293 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %292, i32 0, i32 0
  %294 = load i64, i64* %293, align 8
  store i64 %294, i64* %29, align 8
  %295 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %296 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %295, i32 0, i32 4
  %297 = load %struct.TYPE_16__*, %struct.TYPE_16__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %297, i32 0, i32 1
  %299 = load i64, i64* %298, align 8
  store i64 %299, i64* %30, align 8
  %300 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %301 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %300, i32 0, i32 4
  %302 = load %struct.TYPE_16__*, %struct.TYPE_16__** %301, align 8
  %303 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %302, i32 0, i32 2
  %304 = load i64, i64* %303, align 8
  store i64 %304, i64* %31, align 8
  %305 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %306 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %305, i32 0, i32 4
  %307 = load %struct.TYPE_16__*, %struct.TYPE_16__** %306, align 8
  %308 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %307, i32 0, i32 3
  %309 = load i64, i64* %308, align 8
  store i64 %309, i64* %32, align 8
  store i64 0, i64* %21, align 8
  br label %310

310:                                              ; preds = %395, %241
  %311 = load i64, i64* %21, align 8
  %312 = load i64, i64* %11, align 8
  %313 = icmp slt i64 %311, %312
  br i1 %313, label %314, label %398

314:                                              ; preds = %310
  %315 = load i64*, i64** @red, align 8
  %316 = load i64, i64* %21, align 8
  %317 = getelementptr inbounds i64, i64* %315, i64 %316
  %318 = load i64, i64* %317, align 8
  %319 = sitofp i64 %318 to double
  %320 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %321 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %320, i32 0, i32 5
  %322 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %321, i32 0, i32 2
  %323 = load double, double* %322, align 8
  %324 = fmul double %319, %323
  %325 = load i64, i64* %25, align 8
  %326 = sitofp i64 %325 to double
  %327 = fadd double %324, %326
  %328 = fptosi double %327 to i64
  store i64 %328, i64* %33, align 8
  %329 = load i64*, i64** @green, align 8
  %330 = load i64, i64* %21, align 8
  %331 = getelementptr inbounds i64, i64* %329, i64 %330
  %332 = load i64, i64* %331, align 8
  %333 = sitofp i64 %332 to double
  %334 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %335 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %334, i32 0, i32 5
  %336 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %335, i32 0, i32 4
  %337 = load double, double* %336, align 8
  %338 = fmul double %333, %337
  %339 = load i64, i64* %26, align 8
  %340 = sitofp i64 %339 to double
  %341 = fadd double %338, %340
  %342 = fptosi double %341 to i64
  store i64 %342, i64* %34, align 8
  %343 = load i64*, i64** @blue, align 8
  %344 = load i64, i64* %21, align 8
  %345 = getelementptr inbounds i64, i64* %343, i64 %344
  %346 = load i64, i64* %345, align 8
  %347 = sitofp i64 %346 to double
  %348 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %349 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %348, i32 0, i32 5
  %350 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %349, i32 0, i32 6
  %351 = load double, double* %350, align 8
  %352 = fmul double %347, %351
  %353 = load i64, i64* %27, align 8
  %354 = sitofp i64 %353 to double
  %355 = fadd double %352, %354
  %356 = fptosi double %355 to i64
  store i64 %356, i64* %35, align 8
  %357 = load i64*, i64** @alpha, align 8
  %358 = load i64, i64* %21, align 8
  %359 = getelementptr inbounds i64, i64* %357, i64 %358
  %360 = load i64, i64* %359, align 8
  %361 = sitofp i64 %360 to double
  %362 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %363 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %362, i32 0, i32 5
  %364 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %363, i32 0, i32 8
  %365 = load double, double* %364, align 8
  %366 = fmul double %361, %365
  %367 = load i64, i64* %28, align 8
  %368 = sitofp i64 %367 to double
  %369 = fadd double %366, %368
  %370 = fptosi double %369 to i64
  store i64 %370, i64* %36, align 8
  %371 = load i64, i64* %33, align 8
  %372 = load i64, i64* %29, align 8
  %373 = call i64 @CLAMP(i64 %371, i32 0, i64 %372)
  %374 = load i64*, i64** @red, align 8
  %375 = load i64, i64* %21, align 8
  %376 = getelementptr inbounds i64, i64* %374, i64 %375
  store i64 %373, i64* %376, align 8
  %377 = load i64, i64* %34, align 8
  %378 = load i64, i64* %30, align 8
  %379 = call i64 @CLAMP(i64 %377, i32 0, i64 %378)
  %380 = load i64*, i64** @green, align 8
  %381 = load i64, i64* %21, align 8
  %382 = getelementptr inbounds i64, i64* %380, i64 %381
  store i64 %379, i64* %382, align 8
  %383 = load i64, i64* %35, align 8
  %384 = load i64, i64* %31, align 8
  %385 = call i64 @CLAMP(i64 %383, i32 0, i64 %384)
  %386 = load i64*, i64** @blue, align 8
  %387 = load i64, i64* %21, align 8
  %388 = getelementptr inbounds i64, i64* %386, i64 %387
  store i64 %385, i64* %388, align 8
  %389 = load i64, i64* %36, align 8
  %390 = load i64, i64* %32, align 8
  %391 = call i64 @CLAMP(i64 %389, i32 0, i64 %390)
  %392 = load i64*, i64** @alpha, align 8
  %393 = load i64, i64* %21, align 8
  %394 = getelementptr inbounds i64, i64* %392, i64 %393
  store i64 %391, i64* %394, align 8
  br label %395

395:                                              ; preds = %314
  %396 = load i64, i64* %21, align 8
  %397 = add nsw i64 %396, 1
  store i64 %397, i64* %21, align 8
  br label %310

398:                                              ; preds = %310
  br label %399

399:                                              ; preds = %398, %229
  %400 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %401 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %400, i32 0, i32 5
  %402 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %401, i32 0, i32 19
  %403 = load i64, i64* %402, align 8
  %404 = icmp ne i64 %403, 0
  br i1 %404, label %405, label %555

405:                                              ; preds = %399
  %406 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %407 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %406, i32 0, i32 5
  %408 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %407, i32 0, i32 11
  %409 = load i32, i32* %408, align 8
  %410 = sub nsw i32 %409, 1
  %411 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %412 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %411, i32 0, i32 4
  %413 = load %struct.TYPE_16__*, %struct.TYPE_16__** %412, align 8
  %414 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %413, i32 0, i32 4
  %415 = load i32, i32* %414, align 8
  %416 = mul nsw i32 %410, %415
  %417 = sext i32 %416 to i64
  store i64 %417, i64* %37, align 8
  %418 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %419 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %418, i32 0, i32 5
  %420 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %419, i32 0, i32 12
  %421 = load i32, i32* %420, align 4
  %422 = sub nsw i32 %421, 1
  %423 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %424 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %423, i32 0, i32 4
  %425 = load %struct.TYPE_16__*, %struct.TYPE_16__** %424, align 8
  %426 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %425, i32 0, i32 5
  %427 = load i32, i32* %426, align 4
  %428 = mul nsw i32 %422, %427
  %429 = sext i32 %428 to i64
  store i64 %429, i64* %38, align 8
  %430 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %431 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %430, i32 0, i32 5
  %432 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %431, i32 0, i32 13
  %433 = load i32, i32* %432, align 8
  %434 = sub nsw i32 %433, 1
  %435 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %436 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %435, i32 0, i32 4
  %437 = load %struct.TYPE_16__*, %struct.TYPE_16__** %436, align 8
  %438 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %437, i32 0, i32 6
  %439 = load i32, i32* %438, align 8
  %440 = mul nsw i32 %434, %439
  %441 = sext i32 %440 to i64
  store i64 %441, i64* %39, align 8
  %442 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %443 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %442, i32 0, i32 5
  %444 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %443, i32 0, i32 14
  %445 = load i32, i32* %444, align 4
  %446 = sub nsw i32 %445, 1
  %447 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %448 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %447, i32 0, i32 4
  %449 = load %struct.TYPE_16__*, %struct.TYPE_16__** %448, align 8
  %450 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %449, i32 0, i32 7
  %451 = load i32, i32* %450, align 4
  %452 = mul nsw i32 %446, %451
  %453 = sext i32 %452 to i64
  store i64 %453, i64* %40, align 8
  store i64 0, i64* %21, align 8
  br label %454

454:                                              ; preds = %551, %405
  %455 = load i64, i64* %21, align 8
  %456 = load i64, i64* %11, align 8
  %457 = icmp slt i64 %455, %456
  br i1 %457, label %458, label %554

458:                                              ; preds = %454
  %459 = load i64*, i64** @red, align 8
  %460 = load i64, i64* %21, align 8
  %461 = getelementptr inbounds i64, i64* %459, i64 %460
  %462 = load i64, i64* %461, align 8
  %463 = load i64, i64* %37, align 8
  %464 = mul nsw i64 %462, %463
  store i64 %464, i64* %41, align 8
  %465 = load i64*, i64** @green, align 8
  %466 = load i64, i64* %21, align 8
  %467 = getelementptr inbounds i64, i64* %465, i64 %466
  %468 = load i64, i64* %467, align 8
  %469 = load i64, i64* %38, align 8
  %470 = mul nsw i64 %468, %469
  store i64 %470, i64* %42, align 8
  %471 = load i64*, i64** @blue, align 8
  %472 = load i64, i64* %21, align 8
  %473 = getelementptr inbounds i64, i64* %471, i64 %472
  %474 = load i64, i64* %473, align 8
  %475 = load i64, i64* %39, align 8
  %476 = mul nsw i64 %474, %475
  store i64 %476, i64* %43, align 8
  %477 = load i64*, i64** @alpha, align 8
  %478 = load i64, i64* %21, align 8
  %479 = getelementptr inbounds i64, i64* %477, i64 %478
  %480 = load i64, i64* %479, align 8
  %481 = load i64, i64* %40, align 8
  %482 = mul nsw i64 %480, %481
  store i64 %482, i64* %44, align 8
  %483 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %484 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %483, i32 0, i32 5
  %485 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %484, i32 0, i32 15
  %486 = load i32*, i32** %485, align 8
  %487 = load i64, i64* %41, align 8
  %488 = getelementptr inbounds i32, i32* %486, i64 %487
  %489 = load i32, i32* %488, align 4
  %490 = sext i32 %489 to i64
  %491 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %492 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %491, i32 0, i32 4
  %493 = load %struct.TYPE_16__*, %struct.TYPE_16__** %492, align 8
  %494 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %493, i32 0, i32 0
  %495 = load i64, i64* %494, align 8
  %496 = mul nsw i64 %490, %495
  %497 = load i64*, i64** @red, align 8
  %498 = load i64, i64* %21, align 8
  %499 = getelementptr inbounds i64, i64* %497, i64 %498
  store i64 %496, i64* %499, align 8
  %500 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %501 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %500, i32 0, i32 5
  %502 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %501, i32 0, i32 16
  %503 = load i32*, i32** %502, align 8
  %504 = load i64, i64* %42, align 8
  %505 = getelementptr inbounds i32, i32* %503, i64 %504
  %506 = load i32, i32* %505, align 4
  %507 = sext i32 %506 to i64
  %508 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %509 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %508, i32 0, i32 4
  %510 = load %struct.TYPE_16__*, %struct.TYPE_16__** %509, align 8
  %511 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %510, i32 0, i32 1
  %512 = load i64, i64* %511, align 8
  %513 = mul nsw i64 %507, %512
  %514 = load i64*, i64** @green, align 8
  %515 = load i64, i64* %21, align 8
  %516 = getelementptr inbounds i64, i64* %514, i64 %515
  store i64 %513, i64* %516, align 8
  %517 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %518 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %517, i32 0, i32 5
  %519 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %518, i32 0, i32 17
  %520 = load i32*, i32** %519, align 8
  %521 = load i64, i64* %43, align 8
  %522 = getelementptr inbounds i32, i32* %520, i64 %521
  %523 = load i32, i32* %522, align 4
  %524 = sext i32 %523 to i64
  %525 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %526 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %525, i32 0, i32 4
  %527 = load %struct.TYPE_16__*, %struct.TYPE_16__** %526, align 8
  %528 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %527, i32 0, i32 2
  %529 = load i64, i64* %528, align 8
  %530 = mul nsw i64 %524, %529
  %531 = load i64*, i64** @blue, align 8
  %532 = load i64, i64* %21, align 8
  %533 = getelementptr inbounds i64, i64* %531, i64 %532
  store i64 %530, i64* %533, align 8
  %534 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %535 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %534, i32 0, i32 5
  %536 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %535, i32 0, i32 18
  %537 = load i32*, i32** %536, align 8
  %538 = load i64, i64* %44, align 8
  %539 = getelementptr inbounds i32, i32* %537, i64 %538
  %540 = load i32, i32* %539, align 4
  %541 = sext i32 %540 to i64
  %542 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %543 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %542, i32 0, i32 4
  %544 = load %struct.TYPE_16__*, %struct.TYPE_16__** %543, align 8
  %545 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %544, i32 0, i32 3
  %546 = load i64, i64* %545, align 8
  %547 = mul nsw i64 %541, %546
  %548 = load i64*, i64** @alpha, align 8
  %549 = load i64, i64* %21, align 8
  %550 = getelementptr inbounds i64, i64* %548, i64 %549
  store i64 %547, i64* %550, align 8
  br label %551

551:                                              ; preds = %458
  %552 = load i64, i64* %21, align 8
  %553 = add nsw i64 %552, 1
  store i64 %553, i64* %21, align 8
  br label %454

554:                                              ; preds = %454
  br label %555

555:                                              ; preds = %554, %399
  %556 = load i32, i32* %23, align 4
  %557 = icmp ne i32 %556, 0
  br i1 %557, label %558, label %569

558:                                              ; preds = %555
  %559 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %560 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %559, i32 0, i32 1
  %561 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %560, i32 0, i32 1
  %562 = load i32 (%struct.TYPE_23__*, i64)*, i32 (%struct.TYPE_23__*, i64)** %561, align 8
  %563 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %564 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %565 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %564, i32 0, i32 3
  %566 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %565, i32 0, i32 0
  %567 = load i64, i64* %566, align 8
  %568 = call i32 %562(%struct.TYPE_23__* %563, i64 %567)
  br label %569

569:                                              ; preds = %558, %555
  %570 = load i32, i32* %16, align 4
  %571 = icmp ne i32 %570, 0
  br i1 %571, label %572, label %597

572:                                              ; preds = %569
  %573 = load i64, i64* %19, align 8
  %574 = icmp sge i64 %573, 0
  br i1 %574, label %575, label %597

575:                                              ; preds = %572
  %576 = load i64, i64* %19, align 8
  %577 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %578 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %577, i32 0, i32 2
  %579 = load %struct.TYPE_18__*, %struct.TYPE_18__** %578, align 8
  %580 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %579, i32 0, i32 1
  %581 = load i64, i64* %580, align 8
  %582 = icmp slt i64 %576, %581
  br i1 %582, label %583, label %597

583:                                              ; preds = %575
  %584 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %585 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %584, i32 0, i32 1
  %586 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %585, i32 0, i32 0
  %587 = load i32 (%struct.TYPE_23__*, i64, i64, i64, i64*, i64*, i64*, i64*, i32*)*, i32 (%struct.TYPE_23__*, i64, i64, i64, i64*, i64*, i64*, i64*, i32*)** %586, align 8
  %588 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %589 = load i64, i64* %11, align 8
  %590 = load i64, i64* %13, align 8
  %591 = load i64, i64* %19, align 8
  %592 = load i64*, i64** @red, align 8
  %593 = load i64*, i64** @green, align 8
  %594 = load i64*, i64** @blue, align 8
  %595 = load i64*, i64** @alpha, align 8
  %596 = call i32 %587(%struct.TYPE_23__* %588, i64 %589, i64 %590, i64 %591, i64* %592, i64* %593, i64* %594, i64* %595, i32* null)
  br label %625

597:                                              ; preds = %575, %572, %569
  %598 = load i32, i32* %17, align 4
  %599 = icmp ne i32 %598, 0
  br i1 %599, label %600, label %612

600:                                              ; preds = %597
  %601 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %602 = load i64, i64* %11, align 8
  %603 = load i64, i64* %13, align 8
  %604 = load i64, i64* %19, align 8
  %605 = load i64*, i64** @zspan, align 8
  %606 = load i64*, i64** @red, align 8
  %607 = load i64*, i64** @green, align 8
  %608 = load i64*, i64** @blue, align 8
  %609 = load i64*, i64** @alpha, align 8
  %610 = load i64, i64* %14, align 8
  %611 = call i32 @gl_write_zoomed_color_span(%struct.TYPE_23__* %601, i64 %602, i64 %603, i64 %604, i64* %605, i64* %606, i64* %607, i64* %608, i64* %609, i64 %610)
  br label %624

612:                                              ; preds = %597
  %613 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %614 = load i64, i64* %11, align 8
  %615 = load i64, i64* %13, align 8
  %616 = load i64, i64* %19, align 8
  %617 = load i64*, i64** @zspan, align 8
  %618 = load i64*, i64** @red, align 8
  %619 = load i64*, i64** @green, align 8
  %620 = load i64*, i64** @blue, align 8
  %621 = load i64*, i64** @alpha, align 8
  %622 = load i32, i32* @GL_BITMAP, align 4
  %623 = call i32 @gl_write_color_span(%struct.TYPE_23__* %613, i64 %614, i64 %615, i64 %616, i64* %617, i64* %618, i64* %619, i64* %620, i64* %621, i32 %622)
  br label %624

624:                                              ; preds = %612, %600
  br label %625

625:                                              ; preds = %624, %583
  br label %626

626:                                              ; preds = %625
  %627 = load i64, i64* %22, align 8
  %628 = add nsw i64 %627, 1
  store i64 %628, i64* %22, align 8
  %629 = load i64, i64* %20, align 8
  %630 = load i64, i64* %18, align 8
  %631 = add nsw i64 %630, %629
  store i64 %631, i64* %18, align 8
  %632 = load i64, i64* %20, align 8
  %633 = load i64, i64* %19, align 8
  %634 = add nsw i64 %633, %632
  store i64 %634, i64* %19, align 8
  br label %211

635:                                              ; preds = %211
  %636 = load i64*, i64** @zspan, align 8
  %637 = call i32 @UNDEFARRAY(i64* %636)
  %638 = load i64*, i64** @red, align 8
  %639 = call i32 @UNDEFARRAY(i64* %638)
  %640 = load i64*, i64** @green, align 8
  %641 = call i32 @UNDEFARRAY(i64* %640)
  %642 = load i64*, i64** @blue, align 8
  %643 = call i32 @UNDEFARRAY(i64* %642)
  %644 = load i64*, i64** @alpha, align 8
  %645 = call i32 @UNDEFARRAY(i64* %644)
  ret void
}

declare dso_local i32 @DEFARRAY(i32, i64*, i32) #1

declare dso_local i32 @gl_read_color_span(%struct.TYPE_23__*, i64, i64, i64, i64*, i64*, i64*, i64*) #1

declare dso_local i64 @CLAMP(i64, i32, i64) #1

declare dso_local i32 @gl_write_zoomed_color_span(%struct.TYPE_23__*, i64, i64, i64, i64*, i64*, i64*, i64*, i64*, i64) #1

declare dso_local i32 @gl_write_color_span(%struct.TYPE_23__*, i64, i64, i64, i64*, i64*, i64*, i64*, i64*, i32) #1

declare dso_local i32 @UNDEFARRAY(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
