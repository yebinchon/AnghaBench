; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_copypix.c_copy_depth_pixels.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_copypix.c_copy_depth_pixels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_18__*, %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_14__* }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_17__ = type { float, float, i32, i32 }
%struct.TYPE_16__ = type { i32 (%struct.TYPE_19__*, i64, i64, i64, i32*)* }
%struct.TYPE_15__ = type { i32, i64* }
%struct.TYPE_14__ = type { i32 }

@MAX_WIDTH = common dso_local global i32 0, align 4
@GL_INVALID_OPERATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"glCopyPixels\00", align 1
@GL_FALSE = common dso_local global i64 0, align 8
@GL_TRUE = common dso_local global i64 0, align 8
@DEPTH_SCALE = common dso_local global i32 0, align 4
@GL_BITMAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_19__*, i64, i64, i64, i64, i64, i64)* @copy_depth_pixels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_depth_pixels(%struct.TYPE_19__* %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6) #0 {
  %8 = alloca %struct.TYPE_19__*, align 8
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
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i32, align 4
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  store i64 %6, i64* %14, align 8
  %35 = load i32, i32* @MAX_WIDTH, align 4
  %36 = zext i32 %35 to i64
  %37 = call i8* @llvm.stacksave()
  store i8* %37, i8** %15, align 8
  %38 = alloca i32, i64 %36, align 16
  store i64 %36, i64* %16, align 8
  %39 = load i32, i32* @MAX_WIDTH, align 4
  %40 = zext i32 %39 to i64
  %41 = alloca i64, i64 %40, align 16
  store i64 %40, i64* %17, align 8
  %42 = load i32, i32* @MAX_WIDTH, align 4
  %43 = zext i32 %42 to i64
  %44 = alloca i32, i64 %43, align 16
  store i64 %43, i64* %18, align 8
  %45 = load i32, i32* @MAX_WIDTH, align 4
  %46 = zext i32 %45 to i64
  %47 = alloca i64, i64 %46, align 16
  store i64 %46, i64* %19, align 8
  %48 = load i32, i32* @MAX_WIDTH, align 4
  %49 = zext i32 %48 to i64
  %50 = alloca i64, i64 %49, align 16
  store i64 %49, i64* %20, align 8
  %51 = load i32, i32* @MAX_WIDTH, align 4
  %52 = zext i32 %51 to i64
  %53 = alloca i64, i64 %52, align 16
  store i64 %52, i64* %21, align 8
  %54 = load i32, i32* @MAX_WIDTH, align 4
  %55 = zext i32 %54 to i64
  %56 = alloca i64, i64 %55, align 16
  store i64 %55, i64* %22, align 8
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 4
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %7
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %65 = load i32, i32* @GL_INVALID_OPERATION, align 4
  %66 = call i32 @gl_error(%struct.TYPE_19__* %64, i32 %65, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %29, align 4
  br label %260

67:                                               ; preds = %7
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 0
  %71 = load float, float* %70, align 8
  %72 = fcmp oeq float %71, 1.000000e+00
  br i1 %72, label %73, label %81

73:                                               ; preds = %67
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 1
  %77 = load float, float* %76, align 4
  %78 = fcmp oeq float %77, 1.000000e+00
  br i1 %78, label %79, label %81

79:                                               ; preds = %73
  %80 = load i64, i64* @GL_FALSE, align 8
  store i64 %80, i64* %28, align 8
  br label %83

81:                                               ; preds = %73, %67
  %82 = load i64, i64* @GL_TRUE, align 8
  store i64 %82, i64* %28, align 8
  br label %83

83:                                               ; preds = %81, %79
  %84 = load i64, i64* %10, align 8
  %85 = load i64, i64* %14, align 8
  %86 = icmp ult i64 %84, %85
  br i1 %86, label %87, label %96

87:                                               ; preds = %83
  %88 = load i64, i64* %10, align 8
  %89 = load i64, i64* %12, align 8
  %90 = add i64 %88, %89
  %91 = sub i64 %90, 1
  store i64 %91, i64* %23, align 8
  %92 = load i64, i64* %14, align 8
  %93 = load i64, i64* %12, align 8
  %94 = add i64 %92, %93
  %95 = sub i64 %94, 1
  store i64 %95, i64* %24, align 8
  store i64 -1, i64* %25, align 8
  br label %99

96:                                               ; preds = %83
  %97 = load i64, i64* %10, align 8
  store i64 %97, i64* %23, align 8
  %98 = load i64, i64* %14, align 8
  store i64 %98, i64* %24, align 8
  store i64 1, i64* %25, align 8
  br label %99

99:                                               ; preds = %96, %87
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %147

106:                                              ; preds = %99
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 3
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 1
  %110 = load i64*, i64** %109, align 8
  %111 = getelementptr inbounds i64, i64* %110, i64 0
  %112 = load i64, i64* %111, align 8
  store i64 %112, i64* %30, align 8
  %113 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 1
  %116 = load i64*, i64** %115, align 8
  %117 = getelementptr inbounds i64, i64* %116, i64 1
  %118 = load i64, i64* %117, align 8
  store i64 %118, i64* %31, align 8
  %119 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 1
  %122 = load i64*, i64** %121, align 8
  %123 = getelementptr inbounds i64, i64* %122, i64 2
  %124 = load i64, i64* %123, align 8
  store i64 %124, i64* %32, align 8
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i32 0, i32 3
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 1
  %128 = load i64*, i64** %127, align 8
  %129 = getelementptr inbounds i64, i64* %128, i64 3
  %130 = load i64, i64* %129, align 8
  store i64 %130, i64* %33, align 8
  %131 = load i64, i64* %30, align 8
  %132 = trunc i64 %131 to i32
  %133 = load i64, i64* %11, align 8
  %134 = call i32 @MEMSET(i64* %47, i32 %132, i64 %133)
  %135 = load i64, i64* %31, align 8
  %136 = trunc i64 %135 to i32
  %137 = load i64, i64* %11, align 8
  %138 = call i32 @MEMSET(i64* %50, i32 %136, i64 %137)
  %139 = load i64, i64* %32, align 8
  %140 = trunc i64 %139 to i32
  %141 = load i64, i64* %11, align 8
  %142 = call i32 @MEMSET(i64* %53, i32 %140, i64 %141)
  %143 = load i64, i64* %33, align 8
  %144 = trunc i64 %143 to i32
  %145 = load i64, i64* %11, align 8
  %146 = call i32 @MEMSET(i64* %56, i32 %144, i64 %145)
  br label %163

147:                                              ; preds = %99
  store i64 0, i64* %26, align 8
  br label %148

148:                                              ; preds = %159, %147
  %149 = load i64, i64* %26, align 8
  %150 = load i64, i64* %11, align 8
  %151 = icmp ult i64 %149, %150
  br i1 %151, label %152, label %162

152:                                              ; preds = %148
  %153 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %153, i32 0, i32 3
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load i64, i64* %26, align 8
  %158 = getelementptr inbounds i32, i32* %44, i64 %157
  store i32 %156, i32* %158, align 4
  br label %159

159:                                              ; preds = %152
  %160 = load i64, i64* %26, align 8
  %161 = add i64 %160, 1
  store i64 %161, i64* %26, align 8
  br label %148

162:                                              ; preds = %148
  br label %163

163:                                              ; preds = %162, %106
  store i64 0, i64* %27, align 8
  br label %164

164:                                              ; preds = %250, %163
  %165 = load i64, i64* %27, align 8
  %166 = load i64, i64* %12, align 8
  %167 = icmp ult i64 %165, %166
  br i1 %167, label %168, label %259

168:                                              ; preds = %164
  %169 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %170 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %169, i32 0, i32 2
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %170, i32 0, i32 0
  %172 = load i32 (%struct.TYPE_19__*, i64, i64, i64, i32*)*, i32 (%struct.TYPE_19__*, i64, i64, i64, i32*)** %171, align 8
  %173 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %174 = load i64, i64* %11, align 8
  %175 = load i64, i64* %9, align 8
  %176 = load i64, i64* %23, align 8
  %177 = call i32 %172(%struct.TYPE_19__* %173, i64 %174, i64 %175, i64 %176, i32* %38)
  store i64 0, i64* %26, align 8
  br label %178

178:                                              ; preds = %203, %168
  %179 = load i64, i64* %26, align 8
  %180 = load i64, i64* %11, align 8
  %181 = icmp ult i64 %179, %180
  br i1 %181, label %182, label %206

182:                                              ; preds = %178
  %183 = load i64, i64* %26, align 8
  %184 = getelementptr inbounds i32, i32* %38, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %187 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = mul nsw i32 %185, %189
  %191 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %192 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 4
  %195 = add nsw i32 %190, %194
  store i32 %195, i32* %34, align 4
  %196 = load i32, i32* %34, align 4
  %197 = call i32 @CLAMP(i32 %196, double 0.000000e+00, double 1.000000e+00)
  %198 = load i32, i32* @DEPTH_SCALE, align 4
  %199 = mul nsw i32 %197, %198
  %200 = sext i32 %199 to i64
  %201 = load i64, i64* %26, align 8
  %202 = getelementptr inbounds i64, i64* %41, i64 %201
  store i64 %200, i64* %202, align 8
  br label %203

203:                                              ; preds = %182
  %204 = load i64, i64* %26, align 8
  %205 = add i64 %204, 1
  store i64 %205, i64* %26, align 8
  br label %178

206:                                              ; preds = %178
  %207 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %208 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %207, i32 0, i32 0
  %209 = load %struct.TYPE_18__*, %struct.TYPE_18__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %231

213:                                              ; preds = %206
  %214 = load i64, i64* %28, align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %223

216:                                              ; preds = %213
  %217 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %218 = load i64, i64* %11, align 8
  %219 = load i64, i64* %13, align 8
  %220 = load i64, i64* %24, align 8
  %221 = load i64, i64* %14, align 8
  %222 = call i32 @gl_write_zoomed_color_span(%struct.TYPE_19__* %217, i64 %218, i64 %219, i64 %220, i64* %41, i64* %47, i64* %50, i64* %53, i64* %56, i64 %221)
  br label %230

223:                                              ; preds = %213
  %224 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %225 = load i64, i64* %11, align 8
  %226 = load i64, i64* %13, align 8
  %227 = load i64, i64* %24, align 8
  %228 = load i32, i32* @GL_BITMAP, align 4
  %229 = call i32 @gl_write_color_span(%struct.TYPE_19__* %224, i64 %225, i64 %226, i64 %227, i64* %41, i64* %47, i64* %50, i64* %53, i64* %56, i32 %228)
  br label %230

230:                                              ; preds = %223, %216
  br label %249

231:                                              ; preds = %206
  %232 = load i64, i64* %28, align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %241

234:                                              ; preds = %231
  %235 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %236 = load i64, i64* %11, align 8
  %237 = load i64, i64* %13, align 8
  %238 = load i64, i64* %24, align 8
  %239 = load i64, i64* %14, align 8
  %240 = call i32 @gl_write_zoomed_index_span(%struct.TYPE_19__* %235, i64 %236, i64 %237, i64 %238, i64* %41, i32* %44, i64 %239)
  br label %248

241:                                              ; preds = %231
  %242 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %243 = load i64, i64* %11, align 8
  %244 = load i64, i64* %13, align 8
  %245 = load i64, i64* %24, align 8
  %246 = load i32, i32* @GL_BITMAP, align 4
  %247 = call i32 @gl_write_index_span(%struct.TYPE_19__* %242, i64 %243, i64 %244, i64 %245, i64* %41, i32* %44, i32 %246)
  br label %248

248:                                              ; preds = %241, %234
  br label %249

249:                                              ; preds = %248, %230
  br label %250

250:                                              ; preds = %249
  %251 = load i64, i64* %27, align 8
  %252 = add i64 %251, 1
  store i64 %252, i64* %27, align 8
  %253 = load i64, i64* %25, align 8
  %254 = load i64, i64* %23, align 8
  %255 = add i64 %254, %253
  store i64 %255, i64* %23, align 8
  %256 = load i64, i64* %25, align 8
  %257 = load i64, i64* %24, align 8
  %258 = add i64 %257, %256
  store i64 %258, i64* %24, align 8
  br label %164

259:                                              ; preds = %164
  store i32 0, i32* %29, align 4
  br label %260

260:                                              ; preds = %259, %63
  %261 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %261)
  %262 = load i32, i32* %29, align 4
  switch i32 %262, label %264 [
    i32 0, label %263
    i32 1, label %263
  ]

263:                                              ; preds = %260, %260
  ret void

264:                                              ; preds = %260
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @gl_error(%struct.TYPE_19__*, i32, i8*) #2

declare dso_local i32 @MEMSET(i64*, i32, i64) #2

declare dso_local i32 @CLAMP(i32, double, double) #2

declare dso_local i32 @gl_write_zoomed_color_span(%struct.TYPE_19__*, i64, i64, i64, i64*, i64*, i64*, i64*, i64*, i64) #2

declare dso_local i32 @gl_write_color_span(%struct.TYPE_19__*, i64, i64, i64, i64*, i64*, i64*, i64*, i64*, i32) #2

declare dso_local i32 @gl_write_zoomed_index_span(%struct.TYPE_19__*, i64, i64, i64, i64*, i32*, i64) #2

declare dso_local i32 @gl_write_index_span(%struct.TYPE_19__*, i64, i64, i64, i64*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
