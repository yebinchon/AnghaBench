; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_readpix.c_read_depth_pixels.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_readpix.c_read_depth_pixels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__* }
%struct.TYPE_13__ = type { i32, i64, i32, i32, i64 }
%struct.TYPE_12__ = type { double, double }
%struct.TYPE_11__ = type { i32 (%struct.TYPE_14__*, i32, i32, i32, i32*)*, i32 (%struct.TYPE_14__*, i32, i32, i32, i32*)* }
%struct.TYPE_10__ = type { i64 }

@GL_INVALID_OPERATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"glReadPixels\00", align 1
@GL_INVALID_ENUM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"glReadPixels(type)\00", align 1
@MAX_DEPTH = common dso_local global i32 0, align 4
@MAX_WIDTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, i32, i32, i32, i32, i32, i32*)* @read_depth_pixels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_depth_pixels(%struct.TYPE_14__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32* %6) #0 {
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca i32*, align 8
  %34 = alloca i32*, align 8
  %35 = alloca i32*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32* %6, i32** %14, align 8
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 3
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp sle i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %7
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %44 = load i32, i32* @GL_INVALID_OPERATION, align 4
  %45 = call i32 @gl_error(%struct.TYPE_14__* %43, i32 %44, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %525

46:                                               ; preds = %7
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = load double, double* %49, align 8
  %51 = fcmp une double %50, 0.000000e+00
  br i1 %51, label %58, label %52

52:                                               ; preds = %46
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 1
  %56 = load double, double* %55, align 8
  %57 = fcmp une double %56, 1.000000e+00
  br label %58

58:                                               ; preds = %52, %46
  %59 = phi i1 [ true, %46 ], [ %57, %52 ]
  %60 = zext i1 %59 to i32
  store i32 %60, i32* %22, align 4
  %61 = load i32, i32* %13, align 4
  %62 = call i32 @gl_sizeof_type(i32 %61)
  store i32 %62, i32* %18, align 4
  %63 = load i32, i32* %18, align 4
  %64 = icmp sle i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %58
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %67 = load i32, i32* @GL_INVALID_ENUM, align 4
  %68 = call i32 @gl_error(%struct.TYPE_14__* %66, i32 %67, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %525

69:                                               ; preds = %58
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  store i32 %73, i32* %17, align 4
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp sgt i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %69
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %20, align 4
  br label %87

85:                                               ; preds = %69
  %86 = load i32, i32* %11, align 4
  store i32 %86, i32* %20, align 4
  br label %87

87:                                               ; preds = %85, %79
  %88 = load i32, i32* %18, align 4
  %89 = load i32, i32* %17, align 4
  %90 = icmp sge i32 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %87
  %92 = load i32, i32* %20, align 4
  store i32 %92, i32* %19, align 4
  br label %103

93:                                               ; preds = %87
  %94 = load i32, i32* %17, align 4
  %95 = load i32, i32* %18, align 4
  %96 = sdiv i32 %94, %95
  %97 = load i32, i32* %18, align 4
  %98 = load i32, i32* %20, align 4
  %99 = mul nsw i32 %97, %98
  %100 = load i32, i32* %17, align 4
  %101 = call i32 @CEILING(i32 %99, i32 %100)
  %102 = mul nsw i32 %96, %101
  store i32 %102, i32* %19, align 4
  br label %103

103:                                              ; preds = %93, %91
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* %19, align 4
  %109 = mul nsw i32 %107, %108
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %109, %113
  store i32 %114, i32* %21, align 4
  %115 = load i32, i32* %13, align 4
  %116 = icmp eq i32 %115, 129
  br i1 %116, label %117, label %188

117:                                              ; preds = %103
  %118 = load i32, i32* %22, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %188, label %120

120:                                              ; preds = %117
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 4
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %188, label %126

126:                                              ; preds = %120
  store i32 0, i32* %23, align 4
  %127 = load i32, i32* @MAX_DEPTH, align 4
  store i32 %127, i32* %24, align 4
  br label %128

128:                                              ; preds = %132, %126
  %129 = load i32, i32* %24, align 4
  %130 = and i32 %129, -2147483648
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %128
  %133 = load i32, i32* %24, align 4
  %134 = shl i32 %133, 1
  store i32 %134, i32* %24, align 4
  %135 = load i32, i32* %23, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %23, align 4
  br label %128

137:                                              ; preds = %128
  store i32 0, i32* %16, align 4
  br label %138

138:                                              ; preds = %182, %137
  %139 = load i32, i32* %16, align 4
  %140 = load i32, i32* %12, align 4
  %141 = icmp slt i32 %139, %140
  br i1 %141, label %142, label %187

142:                                              ; preds = %138
  %143 = load i32*, i32** %14, align 8
  %144 = load i32, i32* %21, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = load i32, i32* %16, align 4
  %148 = load i32, i32* %19, align 4
  %149 = mul nsw i32 %147, %148
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %146, i64 %150
  store i32* %151, i32** %25, align 8
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 1
  %155 = load i32 (%struct.TYPE_14__*, i32, i32, i32, i32*)*, i32 (%struct.TYPE_14__*, i32, i32, i32, i32*)** %154, align 8
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %157 = load i32, i32* %11, align 4
  %158 = load i32, i32* %9, align 4
  %159 = load i32, i32* %10, align 4
  %160 = load i32*, i32** %25, align 8
  %161 = call i32 %155(%struct.TYPE_14__* %156, i32 %157, i32 %158, i32 %159, i32* %160)
  store i32 0, i32* %15, align 4
  br label %162

162:                                              ; preds = %178, %142
  %163 = load i32, i32* %15, align 4
  %164 = load i32, i32* %11, align 4
  %165 = icmp slt i32 %163, %164
  br i1 %165, label %166, label %181

166:                                              ; preds = %162
  %167 = load i32*, i32** %25, align 8
  %168 = load i32, i32* %15, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* %23, align 4
  %173 = shl i32 %171, %172
  %174 = load i32*, i32** %25, align 8
  %175 = load i32, i32* %15, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %174, i64 %176
  store i32 %173, i32* %177, align 4
  br label %178

178:                                              ; preds = %166
  %179 = load i32, i32* %15, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %15, align 4
  br label %162

181:                                              ; preds = %162
  br label %182

182:                                              ; preds = %181
  %183 = load i32, i32* %16, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %16, align 4
  %185 = load i32, i32* %10, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %10, align 4
  br label %138

187:                                              ; preds = %138
  br label %525

188:                                              ; preds = %120, %117, %103
  store i32 0, i32* %16, align 4
  br label %189

189:                                              ; preds = %519, %188
  %190 = load i32, i32* %16, align 4
  %191 = load i32, i32* %12, align 4
  %192 = icmp slt i32 %190, %191
  br i1 %192, label %193, label %524

193:                                              ; preds = %189
  %194 = load i32, i32* @MAX_WIDTH, align 4
  %195 = zext i32 %194 to i64
  %196 = call i8* @llvm.stacksave()
  store i8* %196, i8** %26, align 8
  %197 = alloca i32, i64 %195, align 16
  store i64 %195, i64* %27, align 8
  %198 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %199 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %198, i32 0, i32 2
  %200 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %199, i32 0, i32 0
  %201 = load i32 (%struct.TYPE_14__*, i32, i32, i32, i32*)*, i32 (%struct.TYPE_14__*, i32, i32, i32, i32*)** %200, align 8
  %202 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %203 = load i32, i32* %11, align 4
  %204 = load i32, i32* %9, align 4
  %205 = load i32, i32* %10, align 4
  %206 = call i32 %201(%struct.TYPE_14__* %202, i32 %203, i32 %204, i32 %205, i32* %197)
  %207 = load i32, i32* %22, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %240

209:                                              ; preds = %193
  store i32 0, i32* %15, align 4
  br label %210

210:                                              ; preds = %236, %209
  %211 = load i32, i32* %15, align 4
  %212 = load i32, i32* %11, align 4
  %213 = icmp slt i32 %211, %212
  br i1 %213, label %214, label %239

214:                                              ; preds = %210
  %215 = load i32, i32* %15, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %197, i64 %216
  %218 = load i32, i32* %217, align 4
  %219 = sitofp i32 %218 to double
  %220 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %221 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %221, i32 0, i32 1
  %223 = load double, double* %222, align 8
  %224 = fmul double %219, %223
  %225 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %226 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %226, i32 0, i32 0
  %228 = load double, double* %227, align 8
  %229 = fadd double %224, %228
  %230 = fptosi double %229 to i32
  store i32 %230, i32* %28, align 4
  %231 = load i32, i32* %28, align 4
  %232 = call i32 @CLAMP(i32 %231, double 0.000000e+00, double 1.000000e+00)
  %233 = load i32, i32* %15, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %197, i64 %234
  store i32 %232, i32* %235, align 4
  br label %236

236:                                              ; preds = %214
  %237 = load i32, i32* %15, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %15, align 4
  br label %210

239:                                              ; preds = %210
  br label %240

240:                                              ; preds = %239, %193
  %241 = load i32, i32* %13, align 4
  switch i32 %241, label %513 [
    i32 130, label %242
    i32 134, label %268
    i32 128, label %294
    i32 131, label %338
    i32 129, label %382
    i32 132, label %426
    i32 133, label %470
  ]

242:                                              ; preds = %240
  %243 = load i32*, i32** %14, align 8
  %244 = load i32, i32* %21, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i32, i32* %243, i64 %245
  %247 = load i32, i32* %16, align 4
  %248 = load i32, i32* %19, align 4
  %249 = mul nsw i32 %247, %248
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %246, i64 %250
  store i32* %251, i32** %29, align 8
  store i32 0, i32* %15, align 4
  br label %252

252:                                              ; preds = %264, %242
  %253 = load i32, i32* %15, align 4
  %254 = load i32, i32* %11, align 4
  %255 = icmp slt i32 %253, %254
  br i1 %255, label %256, label %267

256:                                              ; preds = %252
  %257 = load i32, i32* %15, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i32, i32* %197, i64 %258
  %260 = load i32, i32* %259, align 4
  %261 = call i32 @FLOAT_TO_UBYTE(i32 %260)
  %262 = load i32*, i32** %29, align 8
  %263 = getelementptr inbounds i32, i32* %262, i32 1
  store i32* %263, i32** %29, align 8
  store i32 %261, i32* %262, align 4
  br label %264

264:                                              ; preds = %256
  %265 = load i32, i32* %15, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %15, align 4
  br label %252

267:                                              ; preds = %252
  br label %517

268:                                              ; preds = %240
  %269 = load i32*, i32** %14, align 8
  %270 = load i32, i32* %21, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i32, i32* %269, i64 %271
  %273 = load i32, i32* %16, align 4
  %274 = load i32, i32* %19, align 4
  %275 = mul nsw i32 %273, %274
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i32, i32* %272, i64 %276
  store i32* %277, i32** %30, align 8
  store i32 0, i32* %15, align 4
  br label %278

278:                                              ; preds = %290, %268
  %279 = load i32, i32* %15, align 4
  %280 = load i32, i32* %11, align 4
  %281 = icmp slt i32 %279, %280
  br i1 %281, label %282, label %293

282:                                              ; preds = %278
  %283 = load i32, i32* %15, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i32, i32* %197, i64 %284
  %286 = load i32, i32* %285, align 4
  %287 = call i32 @FLOAT_TO_BYTE(i32 %286)
  %288 = load i32*, i32** %30, align 8
  %289 = getelementptr inbounds i32, i32* %288, i32 1
  store i32* %289, i32** %30, align 8
  store i32 %287, i32* %288, align 4
  br label %290

290:                                              ; preds = %282
  %291 = load i32, i32* %15, align 4
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %15, align 4
  br label %278

293:                                              ; preds = %278
  br label %517

294:                                              ; preds = %240
  %295 = load i32*, i32** %14, align 8
  %296 = load i32, i32* %21, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i32, i32* %295, i64 %297
  %299 = load i32, i32* %16, align 4
  %300 = load i32, i32* %19, align 4
  %301 = mul nsw i32 %299, %300
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i32, i32* %298, i64 %302
  store i32* %303, i32** %31, align 8
  store i32 0, i32* %15, align 4
  br label %304

304:                                              ; preds = %316, %294
  %305 = load i32, i32* %15, align 4
  %306 = load i32, i32* %11, align 4
  %307 = icmp slt i32 %305, %306
  br i1 %307, label %308, label %319

308:                                              ; preds = %304
  %309 = load i32, i32* %15, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i32, i32* %197, i64 %310
  %312 = load i32, i32* %311, align 4
  %313 = call i32 @FLOAT_TO_USHORT(i32 %312)
  %314 = load i32*, i32** %31, align 8
  %315 = getelementptr inbounds i32, i32* %314, i32 1
  store i32* %315, i32** %31, align 8
  store i32 %313, i32* %314, align 4
  br label %316

316:                                              ; preds = %308
  %317 = load i32, i32* %15, align 4
  %318 = add nsw i32 %317, 1
  store i32 %318, i32* %15, align 4
  br label %304

319:                                              ; preds = %304
  %320 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %321 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %320, i32 0, i32 0
  %322 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %321, i32 0, i32 4
  %323 = load i64, i64* %322, align 8
  %324 = icmp ne i64 %323, 0
  br i1 %324, label %325, label %337

325:                                              ; preds = %319
  %326 = load i32*, i32** %14, align 8
  %327 = load i32, i32* %21, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds i32, i32* %326, i64 %328
  %330 = load i32, i32* %16, align 4
  %331 = load i32, i32* %19, align 4
  %332 = mul nsw i32 %330, %331
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds i32, i32* %329, i64 %333
  %335 = load i32, i32* %11, align 4
  %336 = call i32 @gl_swap2(i32* %334, i32 %335)
  br label %337

337:                                              ; preds = %325, %319
  br label %517

338:                                              ; preds = %240
  %339 = load i32*, i32** %14, align 8
  %340 = load i32, i32* %21, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds i32, i32* %339, i64 %341
  %343 = load i32, i32* %16, align 4
  %344 = load i32, i32* %19, align 4
  %345 = mul nsw i32 %343, %344
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds i32, i32* %342, i64 %346
  store i32* %347, i32** %32, align 8
  store i32 0, i32* %15, align 4
  br label %348

348:                                              ; preds = %360, %338
  %349 = load i32, i32* %15, align 4
  %350 = load i32, i32* %11, align 4
  %351 = icmp slt i32 %349, %350
  br i1 %351, label %352, label %363

352:                                              ; preds = %348
  %353 = load i32, i32* %15, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds i32, i32* %197, i64 %354
  %356 = load i32, i32* %355, align 4
  %357 = call i32 @FLOAT_TO_SHORT(i32 %356)
  %358 = load i32*, i32** %32, align 8
  %359 = getelementptr inbounds i32, i32* %358, i32 1
  store i32* %359, i32** %32, align 8
  store i32 %357, i32* %358, align 4
  br label %360

360:                                              ; preds = %352
  %361 = load i32, i32* %15, align 4
  %362 = add nsw i32 %361, 1
  store i32 %362, i32* %15, align 4
  br label %348

363:                                              ; preds = %348
  %364 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %365 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %364, i32 0, i32 0
  %366 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %365, i32 0, i32 4
  %367 = load i64, i64* %366, align 8
  %368 = icmp ne i64 %367, 0
  br i1 %368, label %369, label %381

369:                                              ; preds = %363
  %370 = load i32*, i32** %14, align 8
  %371 = load i32, i32* %21, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds i32, i32* %370, i64 %372
  %374 = load i32, i32* %16, align 4
  %375 = load i32, i32* %19, align 4
  %376 = mul nsw i32 %374, %375
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds i32, i32* %373, i64 %377
  %379 = load i32, i32* %11, align 4
  %380 = call i32 @gl_swap2(i32* %378, i32 %379)
  br label %381

381:                                              ; preds = %369, %363
  br label %517

382:                                              ; preds = %240
  %383 = load i32*, i32** %14, align 8
  %384 = load i32, i32* %21, align 4
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds i32, i32* %383, i64 %385
  %387 = load i32, i32* %16, align 4
  %388 = load i32, i32* %19, align 4
  %389 = mul nsw i32 %387, %388
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds i32, i32* %386, i64 %390
  store i32* %391, i32** %33, align 8
  store i32 0, i32* %15, align 4
  br label %392

392:                                              ; preds = %404, %382
  %393 = load i32, i32* %15, align 4
  %394 = load i32, i32* %11, align 4
  %395 = icmp slt i32 %393, %394
  br i1 %395, label %396, label %407

396:                                              ; preds = %392
  %397 = load i32, i32* %15, align 4
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds i32, i32* %197, i64 %398
  %400 = load i32, i32* %399, align 4
  %401 = call i32 @FLOAT_TO_UINT(i32 %400)
  %402 = load i32*, i32** %33, align 8
  %403 = getelementptr inbounds i32, i32* %402, i32 1
  store i32* %403, i32** %33, align 8
  store i32 %401, i32* %402, align 4
  br label %404

404:                                              ; preds = %396
  %405 = load i32, i32* %15, align 4
  %406 = add nsw i32 %405, 1
  store i32 %406, i32* %15, align 4
  br label %392

407:                                              ; preds = %392
  %408 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %409 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %408, i32 0, i32 0
  %410 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %409, i32 0, i32 4
  %411 = load i64, i64* %410, align 8
  %412 = icmp ne i64 %411, 0
  br i1 %412, label %413, label %425

413:                                              ; preds = %407
  %414 = load i32*, i32** %14, align 8
  %415 = load i32, i32* %21, align 4
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds i32, i32* %414, i64 %416
  %418 = load i32, i32* %16, align 4
  %419 = load i32, i32* %19, align 4
  %420 = mul nsw i32 %418, %419
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds i32, i32* %417, i64 %421
  %423 = load i32, i32* %11, align 4
  %424 = call i32 @gl_swap4(i32* %422, i32 %423)
  br label %425

425:                                              ; preds = %413, %407
  br label %517

426:                                              ; preds = %240
  %427 = load i32*, i32** %14, align 8
  %428 = load i32, i32* %21, align 4
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds i32, i32* %427, i64 %429
  %431 = load i32, i32* %16, align 4
  %432 = load i32, i32* %19, align 4
  %433 = mul nsw i32 %431, %432
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds i32, i32* %430, i64 %434
  store i32* %435, i32** %34, align 8
  store i32 0, i32* %15, align 4
  br label %436

436:                                              ; preds = %448, %426
  %437 = load i32, i32* %15, align 4
  %438 = load i32, i32* %11, align 4
  %439 = icmp slt i32 %437, %438
  br i1 %439, label %440, label %451

440:                                              ; preds = %436
  %441 = load i32, i32* %15, align 4
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds i32, i32* %197, i64 %442
  %444 = load i32, i32* %443, align 4
  %445 = call i32 @FLOAT_TO_INT(i32 %444)
  %446 = load i32*, i32** %34, align 8
  %447 = getelementptr inbounds i32, i32* %446, i32 1
  store i32* %447, i32** %34, align 8
  store i32 %445, i32* %446, align 4
  br label %448

448:                                              ; preds = %440
  %449 = load i32, i32* %15, align 4
  %450 = add nsw i32 %449, 1
  store i32 %450, i32* %15, align 4
  br label %436

451:                                              ; preds = %436
  %452 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %453 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %452, i32 0, i32 0
  %454 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %453, i32 0, i32 4
  %455 = load i64, i64* %454, align 8
  %456 = icmp ne i64 %455, 0
  br i1 %456, label %457, label %469

457:                                              ; preds = %451
  %458 = load i32*, i32** %14, align 8
  %459 = load i32, i32* %21, align 4
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds i32, i32* %458, i64 %460
  %462 = load i32, i32* %16, align 4
  %463 = load i32, i32* %19, align 4
  %464 = mul nsw i32 %462, %463
  %465 = sext i32 %464 to i64
  %466 = getelementptr inbounds i32, i32* %461, i64 %465
  %467 = load i32, i32* %11, align 4
  %468 = call i32 @gl_swap4(i32* %466, i32 %467)
  br label %469

469:                                              ; preds = %457, %451
  br label %517

470:                                              ; preds = %240
  %471 = load i32*, i32** %14, align 8
  %472 = load i32, i32* %21, align 4
  %473 = sext i32 %472 to i64
  %474 = getelementptr inbounds i32, i32* %471, i64 %473
  %475 = load i32, i32* %16, align 4
  %476 = load i32, i32* %19, align 4
  %477 = mul nsw i32 %475, %476
  %478 = sext i32 %477 to i64
  %479 = getelementptr inbounds i32, i32* %474, i64 %478
  store i32* %479, i32** %35, align 8
  store i32 0, i32* %15, align 4
  br label %480

480:                                              ; preds = %491, %470
  %481 = load i32, i32* %15, align 4
  %482 = load i32, i32* %11, align 4
  %483 = icmp slt i32 %481, %482
  br i1 %483, label %484, label %494

484:                                              ; preds = %480
  %485 = load i32, i32* %15, align 4
  %486 = sext i32 %485 to i64
  %487 = getelementptr inbounds i32, i32* %197, i64 %486
  %488 = load i32, i32* %487, align 4
  %489 = load i32*, i32** %35, align 8
  %490 = getelementptr inbounds i32, i32* %489, i32 1
  store i32* %490, i32** %35, align 8
  store i32 %488, i32* %489, align 4
  br label %491

491:                                              ; preds = %484
  %492 = load i32, i32* %15, align 4
  %493 = add nsw i32 %492, 1
  store i32 %493, i32* %15, align 4
  br label %480

494:                                              ; preds = %480
  %495 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %496 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %495, i32 0, i32 0
  %497 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %496, i32 0, i32 4
  %498 = load i64, i64* %497, align 8
  %499 = icmp ne i64 %498, 0
  br i1 %499, label %500, label %512

500:                                              ; preds = %494
  %501 = load i32*, i32** %14, align 8
  %502 = load i32, i32* %21, align 4
  %503 = sext i32 %502 to i64
  %504 = getelementptr inbounds i32, i32* %501, i64 %503
  %505 = load i32, i32* %16, align 4
  %506 = load i32, i32* %19, align 4
  %507 = mul nsw i32 %505, %506
  %508 = sext i32 %507 to i64
  %509 = getelementptr inbounds i32, i32* %504, i64 %508
  %510 = load i32, i32* %11, align 4
  %511 = call i32 @gl_swap4(i32* %509, i32 %510)
  br label %512

512:                                              ; preds = %500, %494
  br label %517

513:                                              ; preds = %240
  %514 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %515 = load i32, i32* @GL_INVALID_ENUM, align 4
  %516 = call i32 @gl_error(%struct.TYPE_14__* %514, i32 %515, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %517

517:                                              ; preds = %513, %512, %469, %425, %381, %337, %293, %267
  %518 = load i8*, i8** %26, align 8
  call void @llvm.stackrestore(i8* %518)
  br label %519

519:                                              ; preds = %517
  %520 = load i32, i32* %16, align 4
  %521 = add nsw i32 %520, 1
  store i32 %521, i32* %16, align 4
  %522 = load i32, i32* %10, align 4
  %523 = add nsw i32 %522, 1
  store i32 %523, i32* %10, align 4
  br label %189

524:                                              ; preds = %189
  br label %525

525:                                              ; preds = %42, %65, %524, %187
  ret void
}

declare dso_local i32 @gl_error(%struct.TYPE_14__*, i32, i8*) #1

declare dso_local i32 @gl_sizeof_type(i32) #1

declare dso_local i32 @CEILING(i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @CLAMP(i32, double, double) #1

declare dso_local i32 @FLOAT_TO_UBYTE(i32) #1

declare dso_local i32 @FLOAT_TO_BYTE(i32) #1

declare dso_local i32 @FLOAT_TO_USHORT(i32) #1

declare dso_local i32 @gl_swap2(i32*, i32) #1

declare dso_local i32 @FLOAT_TO_SHORT(i32) #1

declare dso_local i32 @FLOAT_TO_UINT(i32) #1

declare dso_local i32 @gl_swap4(i32*, i32) #1

declare dso_local i32 @FLOAT_TO_INT(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
