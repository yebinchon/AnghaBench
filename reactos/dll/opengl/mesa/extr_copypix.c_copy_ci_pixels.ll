; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_copypix.c_copy_ci_pixels.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_copypix.c_copy_ci_pixels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_16__ = type { i32 (%struct.TYPE_18__*, i64)* }
%struct.TYPE_15__ = type { float, float, i64, i64, i64, i64, i64*, i64 }
%struct.TYPE_14__ = type { i32* }
%struct.TYPE_13__ = type { i64 }

@MAX_WIDTH = common dso_local global i32 0, align 4
@GL_FALSE = common dso_local global i32 0, align 4
@GL_TRUE = common dso_local global i32 0, align 4
@DEPTH_SCALE = common dso_local global i32 0, align 4
@GL_BITMAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*, i64, i64, i64, i64, i64, i64)* @copy_ci_pixels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_ci_pixels(%struct.TYPE_18__* %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6) #0 {
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  store i64 %6, i64* %14, align 8
  %26 = load i32, i32* @MAX_WIDTH, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %15, align 8
  %29 = alloca i64, i64 %27, align 16
  store i64 %27, i64* %16, align 8
  %30 = load i32, i32* @MAX_WIDTH, align 4
  %31 = zext i32 %30 to i64
  %32 = alloca i64, i64 %31, align 16
  store i64 %31, i64* %17, align 8
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 0
  %36 = load float, float* %35, align 8
  %37 = fcmp oeq float %36, 1.000000e+00
  br i1 %37, label %38, label %46

38:                                               ; preds = %7
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 1
  %42 = load float, float* %41, align 4
  %43 = fcmp oeq float %42, 1.000000e+00
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32, i32* @GL_FALSE, align 4
  store i32 %45, i32* %24, align 4
  br label %48

46:                                               ; preds = %38, %7
  %47 = load i32, i32* @GL_TRUE, align 4
  store i32 %47, i32* %24, align 4
  br label %48

48:                                               ; preds = %46, %44
  %49 = load i64, i64* %10, align 8
  %50 = load i64, i64* %14, align 8
  %51 = icmp ult i64 %49, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %48
  %53 = load i64, i64* %10, align 8
  %54 = load i64, i64* %12, align 8
  %55 = add i64 %53, %54
  %56 = sub i64 %55, 1
  store i64 %56, i64* %18, align 8
  %57 = load i64, i64* %14, align 8
  %58 = load i64, i64* %12, align 8
  %59 = add i64 %57, %58
  %60 = sub i64 %59, 1
  store i64 %60, i64* %19, align 8
  store i64 -1, i64* %20, align 8
  br label %64

61:                                               ; preds = %48
  %62 = load i64, i64* %10, align 8
  store i64 %62, i64* %18, align 8
  %63 = load i64, i64* %14, align 8
  store i64 %63, i64* %19, align 8
  store i64 1, i64* %20, align 8
  br label %64

64:                                               ; preds = %61, %52
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 4
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %92

70:                                               ; preds = %64
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 2
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @DEPTH_SCALE, align 4
  %78 = mul nsw i32 %76, %77
  %79 = sext i32 %78 to i64
  store i64 %79, i64* %25, align 8
  store i64 0, i64* %21, align 8
  br label %80

80:                                               ; preds = %88, %70
  %81 = load i64, i64* %21, align 8
  %82 = load i64, i64* %11, align 8
  %83 = icmp ult i64 %81, %82
  br i1 %83, label %84, label %91

84:                                               ; preds = %80
  %85 = load i64, i64* %25, align 8
  %86 = load i64, i64* %21, align 8
  %87 = getelementptr inbounds i64, i64* %29, i64 %86
  store i64 %85, i64* %87, align 8
  br label %88

88:                                               ; preds = %84
  %89 = load i64, i64* %21, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %21, align 8
  br label %80

91:                                               ; preds = %80
  br label %92

92:                                               ; preds = %91, %64
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %96, %100
  %102 = zext i1 %101 to i32
  store i32 %102, i32* %23, align 4
  store i64 0, i64* %22, align 8
  br label %103

103:                                              ; preds = %265, %92
  %104 = load i64, i64* %22, align 8
  %105 = load i64, i64* %12, align 8
  %106 = icmp ult i64 %104, %105
  br i1 %106, label %107, label %274

107:                                              ; preds = %103
  %108 = load i32, i32* %23, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %121

110:                                              ; preds = %107
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 0
  %114 = load i32 (%struct.TYPE_18__*, i64)*, i32 (%struct.TYPE_18__*, i64)** %113, align 8
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = call i32 %114(%struct.TYPE_18__* %115, i64 %119)
  br label %121

121:                                              ; preds = %110, %107
  %122 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %123 = load i64, i64* %11, align 8
  %124 = load i64, i64* %9, align 8
  %125 = load i64, i64* %18, align 8
  %126 = call i32 @gl_read_index_span(%struct.TYPE_18__* %122, i64 %123, i64 %124, i64 %125, i64* %32)
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 3
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %138, label %132

132:                                              ; preds = %121
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 4
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %196

138:                                              ; preds = %132, %121
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 3
  %142 = load i64, i64* %141, align 8
  %143 = icmp ult i64 %142, 0
  br i1 %143, label %144, label %170

144:                                              ; preds = %138
  store i64 0, i64* %21, align 8
  br label %145

145:                                              ; preds = %166, %144
  %146 = load i64, i64* %21, align 8
  %147 = load i64, i64* %11, align 8
  %148 = icmp ult i64 %146, %147
  br i1 %148, label %149, label %169

149:                                              ; preds = %145
  %150 = load i64, i64* %21, align 8
  %151 = getelementptr inbounds i64, i64* %32, i64 %150
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 3
  %156 = load i64, i64* %155, align 8
  %157 = sub i64 0, %156
  %158 = lshr i64 %152, %157
  %159 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 4
  %162 = load i64, i64* %161, align 8
  %163 = add i64 %158, %162
  %164 = load i64, i64* %21, align 8
  %165 = getelementptr inbounds i64, i64* %32, i64 %164
  store i64 %163, i64* %165, align 8
  br label %166

166:                                              ; preds = %149
  %167 = load i64, i64* %21, align 8
  %168 = add i64 %167, 1
  store i64 %168, i64* %21, align 8
  br label %145

169:                                              ; preds = %145
  br label %195

170:                                              ; preds = %138
  store i64 0, i64* %21, align 8
  br label %171

171:                                              ; preds = %191, %170
  %172 = load i64, i64* %21, align 8
  %173 = load i64, i64* %11, align 8
  %174 = icmp ult i64 %172, %173
  br i1 %174, label %175, label %194

175:                                              ; preds = %171
  %176 = load i64, i64* %21, align 8
  %177 = getelementptr inbounds i64, i64* %32, i64 %176
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %180 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %179, i32 0, i32 2
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i32 0, i32 3
  %182 = load i64, i64* %181, align 8
  %183 = shl i64 %178, %182
  %184 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %185, i32 0, i32 4
  %187 = load i64, i64* %186, align 8
  %188 = add i64 %183, %187
  %189 = load i64, i64* %21, align 8
  %190 = getelementptr inbounds i64, i64* %32, i64 %189
  store i64 %188, i64* %190, align 8
  br label %191

191:                                              ; preds = %175
  %192 = load i64, i64* %21, align 8
  %193 = add i64 %192, 1
  store i64 %193, i64* %21, align 8
  br label %171

194:                                              ; preds = %171
  br label %195

195:                                              ; preds = %194, %169
  br label %196

196:                                              ; preds = %195, %132
  %197 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %198 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %197, i32 0, i32 2
  %199 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %198, i32 0, i32 7
  %200 = load i64, i64* %199, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %233

202:                                              ; preds = %196
  store i64 0, i64* %21, align 8
  br label %203

203:                                              ; preds = %229, %202
  %204 = load i64, i64* %21, align 8
  %205 = load i64, i64* %11, align 8
  %206 = icmp ult i64 %204, %205
  br i1 %206, label %207, label %232

207:                                              ; preds = %203
  %208 = load i64, i64* %21, align 8
  %209 = getelementptr inbounds i64, i64* %32, i64 %208
  %210 = load i64, i64* %209, align 8
  %211 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %212 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %211, i32 0, i32 2
  %213 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %212, i32 0, i32 5
  %214 = load i64, i64* %213, align 8
  %215 = icmp ult i64 %210, %214
  br i1 %215, label %216, label %228

216:                                              ; preds = %207
  %217 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %218 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %217, i32 0, i32 2
  %219 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %218, i32 0, i32 6
  %220 = load i64*, i64** %219, align 8
  %221 = load i64, i64* %21, align 8
  %222 = getelementptr inbounds i64, i64* %32, i64 %221
  %223 = load i64, i64* %222, align 8
  %224 = getelementptr inbounds i64, i64* %220, i64 %223
  %225 = load i64, i64* %224, align 8
  %226 = load i64, i64* %21, align 8
  %227 = getelementptr inbounds i64, i64* %32, i64 %226
  store i64 %225, i64* %227, align 8
  br label %228

228:                                              ; preds = %216, %207
  br label %229

229:                                              ; preds = %228
  %230 = load i64, i64* %21, align 8
  %231 = add i64 %230, 1
  store i64 %231, i64* %21, align 8
  br label %203

232:                                              ; preds = %203
  br label %233

233:                                              ; preds = %232, %196
  %234 = load i32, i32* %23, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %247

236:                                              ; preds = %233
  %237 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %238 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %237, i32 0, i32 1
  %239 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %238, i32 0, i32 0
  %240 = load i32 (%struct.TYPE_18__*, i64)*, i32 (%struct.TYPE_18__*, i64)** %239, align 8
  %241 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %242 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %243 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = call i32 %240(%struct.TYPE_18__* %241, i64 %245)
  br label %247

247:                                              ; preds = %236, %233
  %248 = load i32, i32* %24, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %257

250:                                              ; preds = %247
  %251 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %252 = load i64, i64* %11, align 8
  %253 = load i64, i64* %13, align 8
  %254 = load i64, i64* %19, align 8
  %255 = load i64, i64* %14, align 8
  %256 = call i32 @gl_write_zoomed_index_span(%struct.TYPE_18__* %251, i64 %252, i64 %253, i64 %254, i64* %29, i64* %32, i64 %255)
  br label %264

257:                                              ; preds = %247
  %258 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %259 = load i64, i64* %11, align 8
  %260 = load i64, i64* %13, align 8
  %261 = load i64, i64* %19, align 8
  %262 = load i32, i32* @GL_BITMAP, align 4
  %263 = call i32 @gl_write_index_span(%struct.TYPE_18__* %258, i64 %259, i64 %260, i64 %261, i64* %29, i64* %32, i32 %262)
  br label %264

264:                                              ; preds = %257, %250
  br label %265

265:                                              ; preds = %264
  %266 = load i64, i64* %22, align 8
  %267 = add i64 %266, 1
  store i64 %267, i64* %22, align 8
  %268 = load i64, i64* %20, align 8
  %269 = load i64, i64* %18, align 8
  %270 = add i64 %269, %268
  store i64 %270, i64* %18, align 8
  %271 = load i64, i64* %20, align 8
  %272 = load i64, i64* %19, align 8
  %273 = add i64 %272, %271
  store i64 %273, i64* %19, align 8
  br label %103

274:                                              ; preds = %103
  %275 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %275)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @gl_read_index_span(%struct.TYPE_18__*, i64, i64, i64, i64*) #2

declare dso_local i32 @gl_write_zoomed_index_span(%struct.TYPE_18__*, i64, i64, i64, i64*, i64*, i64) #2

declare dso_local i32 @gl_write_index_span(%struct.TYPE_18__*, i64, i64, i64, i64*, i64*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
