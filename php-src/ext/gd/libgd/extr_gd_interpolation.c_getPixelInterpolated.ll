; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_interpolation.c_getPixelInterpolated.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_interpolation.c_getPixelInterpolated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i64 (double)* }

@GD_BILINEAR_FIXED = common dso_local global i64 0, align 8
@GD_BICUBIC_FIXED = common dso_local global i64 0, align 8
@GD_NEAREST_NEIGHBOUR = common dso_local global i64 0, align 8
@GD_WEIGHTED4 = common dso_local global i64 0, align 8
@gdAlphaMax = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getPixelInterpolated(%struct.TYPE_6__* %0, double %1, double %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca [12 x double], align 16
  %17 = alloca [4 x double], align 16
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store double %1, double* %7, align 8
  store double %2, double* %8, align 8
  store i32 %3, i32* %9, align 4
  %25 = load double, double* %7, align 8
  %26 = fcmp olt double %25, 0.000000e+00
  br i1 %26, label %27, label %30

27:                                               ; preds = %4
  %28 = load double, double* %7, align 8
  %29 = fsub double %28, 1.000000e+00
  br label %32

30:                                               ; preds = %4
  %31 = load double, double* %7, align 8
  br label %32

32:                                               ; preds = %30, %27
  %33 = phi double [ %29, %27 ], [ %31, %30 ]
  %34 = fptosi double %33 to i32
  store i32 %34, i32* %10, align 4
  %35 = load double, double* %8, align 8
  %36 = fcmp olt double %35, 0.000000e+00
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load double, double* %8, align 8
  %39 = fsub double %38, 1.000000e+00
  br label %42

40:                                               ; preds = %32
  %41 = load double, double* %8, align 8
  br label %42

42:                                               ; preds = %40, %37
  %43 = phi double [ %39, %37 ], [ %41, %40 ]
  %44 = fptosi double %43 to i32
  store i32 %44, i32* %11, align 4
  store double 0.000000e+00, double* %18, align 8
  store double 0.000000e+00, double* %19, align 8
  store double 0.000000e+00, double* %20, align 8
  store double 0.000000e+00, double* %21, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @GD_BILINEAR_FIXED, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %62, label %50

50:                                               ; preds = %42
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @GD_BICUBIC_FIXED, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %62, label %56

56:                                               ; preds = %50
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @GD_NEAREST_NEIGHBOUR, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %56, %50, %42
  store i32 -1, i32* %5, align 4
  br label %288

63:                                               ; preds = %56
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @GD_WEIGHTED4, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %63
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %71 = load double, double* %7, align 8
  %72 = load double, double* %8, align 8
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @getPixelInterpolateWeight(%struct.TYPE_6__* %70, double %71, double %72, i32 %73)
  store i32 %74, i32* %5, align 4
  br label %288

75:                                               ; preds = %63
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @GD_NEAREST_NEIGHBOUR, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %98

81:                                               ; preds = %75
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = icmp eq i32 %84, 1
  br i1 %85, label %86, label %92

86:                                               ; preds = %81
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @getPixelOverflowTC(%struct.TYPE_6__* %87, i32 %88, i32 %89, i32 %90)
  store i32 %91, i32* %5, align 4
  br label %288

92:                                               ; preds = %81
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* %9, align 4
  %97 = call i32 @getPixelOverflowPalette(%struct.TYPE_6__* %93, i32 %94, i32 %95, i32 %96)
  store i32 %97, i32* %5, align 4
  br label %288

98:                                               ; preds = %75
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 2
  %101 = load i64 (double)*, i64 (double)** %100, align 8
  %102 = icmp ne i64 (double)* %101, null
  br i1 %102, label %103, label %142

103:                                              ; preds = %98
  store i32 0, i32* %13, align 4
  br label %104

104:                                              ; preds = %138, %103
  %105 = load i32, i32* %13, align 4
  %106 = icmp slt i32 %105, 4
  br i1 %106, label %107, label %141

107:                                              ; preds = %104
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 2
  %110 = load i64 (double)*, i64 (double)** %109, align 8
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* %13, align 4
  %113 = add nsw i32 %111, %112
  %114 = sub nsw i32 %113, 1
  %115 = sitofp i32 %114 to double
  %116 = load double, double* %7, align 8
  %117 = fsub double %115, %116
  %118 = call i64 %110(double %117)
  %119 = sitofp i64 %118 to double
  %120 = load i32, i32* %13, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [12 x double], [12 x double]* %16, i64 0, i64 %121
  store double %119, double* %122, align 8
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 2
  %125 = load i64 (double)*, i64 (double)** %124, align 8
  %126 = load i32, i32* %11, align 4
  %127 = load i32, i32* %13, align 4
  %128 = add nsw i32 %126, %127
  %129 = sub nsw i32 %128, 1
  %130 = sitofp i32 %129 to double
  %131 = load double, double* %8, align 8
  %132 = fsub double %130, %131
  %133 = call i64 %125(double %132)
  %134 = sitofp i64 %133 to double
  %135 = load i32, i32* %13, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [4 x double], [4 x double]* %17, i64 0, i64 %136
  store double %134, double* %137, align 8
  br label %138

138:                                              ; preds = %107
  %139 = load i32, i32* %13, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %13, align 4
  br label %104

141:                                              ; preds = %104
  br label %143

142:                                              ; preds = %98
  store i32 -1, i32* %5, align 4
  br label %288

143:                                              ; preds = %141
  %144 = load i32, i32* %11, align 4
  %145 = sub nsw i32 %144, 1
  store i32 %145, i32* %12, align 4
  br label %146

146:                                              ; preds = %266, %143
  %147 = load i32, i32* %12, align 4
  %148 = load i32, i32* %11, align 4
  %149 = add nsw i32 %148, 3
  %150 = icmp slt i32 %147, %149
  br i1 %150, label %151, label %269

151:                                              ; preds = %146
  %152 = load i32, i32* %12, align 4
  %153 = load i32, i32* %11, align 4
  %154 = sub nsw i32 %153, 1
  %155 = sub nsw i32 %152, %154
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [4 x double], [4 x double]* %17, i64 0, i64 %156
  %158 = load double, double* %157, align 8
  store double %158, double* %15, align 8
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %214

163:                                              ; preds = %151
  %164 = load i32, i32* %10, align 4
  %165 = sub nsw i32 %164, 1
  store i32 %165, i32* %22, align 4
  br label %166

166:                                              ; preds = %210, %163
  %167 = load i32, i32* %22, align 4
  %168 = load i32, i32* %10, align 4
  %169 = add nsw i32 %168, 3
  %170 = icmp slt i32 %167, %169
  br i1 %170, label %171, label %213

171:                                              ; preds = %166
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %173 = load i32, i32* %22, align 4
  %174 = load i32, i32* %12, align 4
  %175 = load i32, i32* %9, align 4
  %176 = call i32 @getPixelOverflowTC(%struct.TYPE_6__* %172, i32 %173, i32 %174, i32 %175)
  store i32 %176, i32* %23, align 4
  %177 = load double, double* %15, align 8
  %178 = load i32, i32* %22, align 4
  %179 = load i32, i32* %10, align 4
  %180 = sub nsw i32 %179, 1
  %181 = sub nsw i32 %178, %180
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds [12 x double], [12 x double]* %16, i64 0, i64 %182
  %184 = load double, double* %183, align 8
  %185 = fmul double %177, %184
  store double %185, double* %14, align 8
  %186 = load double, double* %14, align 8
  %187 = load i32, i32* %23, align 4
  %188 = call double @gdTrueColorGetRed(i32 %187)
  %189 = fmul double %186, %188
  %190 = load double, double* %18, align 8
  %191 = fadd double %190, %189
  store double %191, double* %18, align 8
  %192 = load double, double* %14, align 8
  %193 = load i32, i32* %23, align 4
  %194 = call double @gdTrueColorGetGreen(i32 %193)
  %195 = fmul double %192, %194
  %196 = load double, double* %19, align 8
  %197 = fadd double %196, %195
  store double %197, double* %19, align 8
  %198 = load double, double* %14, align 8
  %199 = load i32, i32* %23, align 4
  %200 = call double @gdTrueColorGetBlue(i32 %199)
  %201 = fmul double %198, %200
  %202 = load double, double* %20, align 8
  %203 = fadd double %202, %201
  store double %203, double* %20, align 8
  %204 = load double, double* %14, align 8
  %205 = load i32, i32* %23, align 4
  %206 = call double @gdTrueColorGetAlpha(i32 %205)
  %207 = fmul double %204, %206
  %208 = load double, double* %21, align 8
  %209 = fadd double %208, %207
  store double %209, double* %21, align 8
  br label %210

210:                                              ; preds = %171
  %211 = load i32, i32* %22, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %22, align 4
  br label %166

213:                                              ; preds = %166
  br label %265

214:                                              ; preds = %151
  %215 = load i32, i32* %10, align 4
  %216 = sub nsw i32 %215, 1
  store i32 %216, i32* %22, align 4
  br label %217

217:                                              ; preds = %261, %214
  %218 = load i32, i32* %22, align 4
  %219 = load i32, i32* %10, align 4
  %220 = add nsw i32 %219, 3
  %221 = icmp slt i32 %218, %220
  br i1 %221, label %222, label %264

222:                                              ; preds = %217
  %223 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %224 = load i32, i32* %22, align 4
  %225 = load i32, i32* %12, align 4
  %226 = load i32, i32* %9, align 4
  %227 = call i32 @getPixelOverflowPalette(%struct.TYPE_6__* %223, i32 %224, i32 %225, i32 %226)
  store i32 %227, i32* %24, align 4
  %228 = load double, double* %15, align 8
  %229 = load i32, i32* %22, align 4
  %230 = load i32, i32* %10, align 4
  %231 = sub nsw i32 %230, 1
  %232 = sub nsw i32 %229, %231
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds [12 x double], [12 x double]* %16, i64 0, i64 %233
  %235 = load double, double* %234, align 8
  %236 = fmul double %228, %235
  store double %236, double* %14, align 8
  %237 = load double, double* %14, align 8
  %238 = load i32, i32* %24, align 4
  %239 = call double @gdTrueColorGetRed(i32 %238)
  %240 = fmul double %237, %239
  %241 = load double, double* %18, align 8
  %242 = fadd double %241, %240
  store double %242, double* %18, align 8
  %243 = load double, double* %14, align 8
  %244 = load i32, i32* %24, align 4
  %245 = call double @gdTrueColorGetGreen(i32 %244)
  %246 = fmul double %243, %245
  %247 = load double, double* %19, align 8
  %248 = fadd double %247, %246
  store double %248, double* %19, align 8
  %249 = load double, double* %14, align 8
  %250 = load i32, i32* %24, align 4
  %251 = call double @gdTrueColorGetBlue(i32 %250)
  %252 = fmul double %249, %251
  %253 = load double, double* %20, align 8
  %254 = fadd double %253, %252
  store double %254, double* %20, align 8
  %255 = load double, double* %14, align 8
  %256 = load i32, i32* %24, align 4
  %257 = call double @gdTrueColorGetAlpha(i32 %256)
  %258 = fmul double %255, %257
  %259 = load double, double* %21, align 8
  %260 = fadd double %259, %258
  store double %260, double* %21, align 8
  br label %261

261:                                              ; preds = %222
  %262 = load i32, i32* %22, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %22, align 4
  br label %217

264:                                              ; preds = %217
  br label %265

265:                                              ; preds = %264, %213
  br label %266

266:                                              ; preds = %265
  %267 = load i32, i32* %12, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %12, align 4
  br label %146

269:                                              ; preds = %146
  %270 = load double, double* %18, align 8
  %271 = call double @CLAMP(double %270, i32 0, i32 255)
  store double %271, double* %18, align 8
  %272 = load double, double* %19, align 8
  %273 = call double @CLAMP(double %272, i32 0, i32 255)
  store double %273, double* %19, align 8
  %274 = load double, double* %20, align 8
  %275 = call double @CLAMP(double %274, i32 0, i32 255)
  store double %275, double* %20, align 8
  %276 = load double, double* %21, align 8
  %277 = load i32, i32* @gdAlphaMax, align 4
  %278 = call double @CLAMP(double %276, i32 0, i32 %277)
  store double %278, double* %21, align 8
  %279 = load double, double* %18, align 8
  %280 = fptosi double %279 to i32
  %281 = load double, double* %19, align 8
  %282 = fptosi double %281 to i32
  %283 = load double, double* %20, align 8
  %284 = fptosi double %283 to i32
  %285 = load double, double* %21, align 8
  %286 = fptosi double %285 to i32
  %287 = call i32 @gdTrueColorAlpha(i32 %280, i32 %282, i32 %284, i32 %286)
  store i32 %287, i32* %5, align 4
  br label %288

288:                                              ; preds = %269, %142, %92, %86, %69, %62
  %289 = load i32, i32* %5, align 4
  ret i32 %289
}

declare dso_local i32 @getPixelInterpolateWeight(%struct.TYPE_6__*, double, double, i32) #1

declare dso_local i32 @getPixelOverflowTC(%struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local i32 @getPixelOverflowPalette(%struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local double @gdTrueColorGetRed(i32) #1

declare dso_local double @gdTrueColorGetGreen(i32) #1

declare dso_local double @gdTrueColorGetBlue(i32) #1

declare dso_local double @gdTrueColorGetAlpha(i32) #1

declare dso_local double @CLAMP(double, i32, i32) #1

declare dso_local i32 @gdTrueColorAlpha(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
