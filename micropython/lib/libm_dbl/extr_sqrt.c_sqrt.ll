; ModuleID = '/home/carl/AnghaBench/micropython/lib/libm_dbl/extr_sqrt.c_sqrt.c'
source_filename = "/home/carl/AnghaBench/micropython/lib/libm_dbl/extr_sqrt.c_sqrt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tiny = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @sqrt(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store double %0, double* %3, align 8
  store i32 -2147483648, i32* %5, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %15, align 4
  %19 = load double, double* %3, align 8
  %20 = call i32 @EXTRACT_WORDS(i32 %17, i32 %18, double %19)
  %21 = load i32, i32* %6, align 4
  %22 = and i32 %21, 2146435072
  %23 = icmp eq i32 %22, 2146435072
  br i1 %23, label %24, label %30

24:                                               ; preds = %1
  %25 = load double, double* %3, align 8
  %26 = load double, double* %3, align 8
  %27 = fmul double %25, %26
  %28 = load double, double* %3, align 8
  %29 = fadd double %27, %28
  store double %29, double* %2, align 8
  br label %297

30:                                               ; preds = %1
  %31 = load i32, i32* %6, align 4
  %32 = icmp sle i32 %31, 0
  br i1 %32, label %33, label %55

33:                                               ; preds = %30
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %5, align 4
  %36 = xor i32 %35, -1
  %37 = and i32 %34, %36
  %38 = load i32, i32* %15, align 4
  %39 = or i32 %37, %38
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load double, double* %3, align 8
  store double %42, double* %2, align 8
  br label %297

43:                                               ; preds = %33
  %44 = load i32, i32* %6, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %43
  %47 = load double, double* %3, align 8
  %48 = load double, double* %3, align 8
  %49 = fsub double %47, %48
  %50 = load double, double* %3, align 8
  %51 = load double, double* %3, align 8
  %52 = fsub double %50, %51
  %53 = fdiv double %49, %52
  store double %53, double* %2, align 8
  br label %297

54:                                               ; preds = %43
  br label %55

55:                                               ; preds = %54, %30
  %56 = load i32, i32* %6, align 4
  %57 = ashr i32 %56, 20
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %98

60:                                               ; preds = %55
  br label %61

61:                                               ; preds = %64, %60
  %62 = load i32, i32* %6, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %61
  %65 = load i32, i32* %9, align 4
  %66 = sub nsw i32 %65, 21
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %15, align 4
  %68 = ashr i32 %67, 11
  %69 = load i32, i32* %6, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %15, align 4
  %72 = shl i32 %71, 21
  store i32 %72, i32* %15, align 4
  br label %61

73:                                               ; preds = %61
  store i32 0, i32* %11, align 4
  br label %74

74:                                               ; preds = %81, %73
  %75 = load i32, i32* %6, align 4
  %76 = and i32 %75, 1048576
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %74
  %79 = load i32, i32* %6, align 4
  %80 = shl i32 %79, 1
  store i32 %80, i32* %6, align 4
  br label %81

81:                                               ; preds = %78
  %82 = load i32, i32* %11, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %11, align 4
  br label %74

84:                                               ; preds = %74
  %85 = load i32, i32* %11, align 4
  %86 = sub nsw i32 %85, 1
  %87 = load i32, i32* %9, align 4
  %88 = sub nsw i32 %87, %86
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %15, align 4
  %90 = load i32, i32* %11, align 4
  %91 = sub nsw i32 32, %90
  %92 = ashr i32 %89, %91
  %93 = load i32, i32* %6, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %6, align 4
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* %15, align 4
  %97 = shl i32 %96, %95
  store i32 %97, i32* %15, align 4
  br label %98

98:                                               ; preds = %84, %55
  %99 = load i32, i32* %9, align 4
  %100 = sub nsw i32 %99, 1023
  store i32 %100, i32* %9, align 4
  %101 = load i32, i32* %6, align 4
  %102 = and i32 %101, 1048575
  %103 = or i32 %102, 1048576
  store i32 %103, i32* %6, align 4
  %104 = load i32, i32* %9, align 4
  %105 = and i32 %104, 1
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %119

107:                                              ; preds = %98
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* %15, align 4
  %110 = load i32, i32* %5, align 4
  %111 = and i32 %109, %110
  %112 = ashr i32 %111, 31
  %113 = add nsw i32 %108, %112
  %114 = load i32, i32* %6, align 4
  %115 = add nsw i32 %114, %113
  store i32 %115, i32* %6, align 4
  %116 = load i32, i32* %15, align 4
  %117 = load i32, i32* %15, align 4
  %118 = add nsw i32 %117, %116
  store i32 %118, i32* %15, align 4
  br label %119

119:                                              ; preds = %107, %98
  %120 = load i32, i32* %9, align 4
  %121 = ashr i32 %120, 1
  store i32 %121, i32* %9, align 4
  %122 = load i32, i32* %6, align 4
  %123 = load i32, i32* %15, align 4
  %124 = load i32, i32* %5, align 4
  %125 = and i32 %123, %124
  %126 = ashr i32 %125, 31
  %127 = add nsw i32 %122, %126
  %128 = load i32, i32* %6, align 4
  %129 = add nsw i32 %128, %127
  store i32 %129, i32* %6, align 4
  %130 = load i32, i32* %15, align 4
  %131 = load i32, i32* %15, align 4
  %132 = add nsw i32 %131, %130
  store i32 %132, i32* %15, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %8, align 4
  store i32 2097152, i32* %12, align 4
  br label %133

133:                                              ; preds = %153, %119
  %134 = load i32, i32* %12, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %167

136:                                              ; preds = %133
  %137 = load i32, i32* %7, align 4
  %138 = load i32, i32* %12, align 4
  %139 = add nsw i32 %137, %138
  store i32 %139, i32* %10, align 4
  %140 = load i32, i32* %10, align 4
  %141 = load i32, i32* %6, align 4
  %142 = icmp sle i32 %140, %141
  br i1 %142, label %143, label %153

143:                                              ; preds = %136
  %144 = load i32, i32* %10, align 4
  %145 = load i32, i32* %12, align 4
  %146 = add nsw i32 %144, %145
  store i32 %146, i32* %7, align 4
  %147 = load i32, i32* %10, align 4
  %148 = load i32, i32* %6, align 4
  %149 = sub nsw i32 %148, %147
  store i32 %149, i32* %6, align 4
  %150 = load i32, i32* %12, align 4
  %151 = load i32, i32* %8, align 4
  %152 = add nsw i32 %151, %150
  store i32 %152, i32* %8, align 4
  br label %153

153:                                              ; preds = %143, %136
  %154 = load i32, i32* %6, align 4
  %155 = load i32, i32* %15, align 4
  %156 = load i32, i32* %5, align 4
  %157 = and i32 %155, %156
  %158 = ashr i32 %157, 31
  %159 = add nsw i32 %154, %158
  %160 = load i32, i32* %6, align 4
  %161 = add nsw i32 %160, %159
  store i32 %161, i32* %6, align 4
  %162 = load i32, i32* %15, align 4
  %163 = load i32, i32* %15, align 4
  %164 = add nsw i32 %163, %162
  store i32 %164, i32* %15, align 4
  %165 = load i32, i32* %12, align 4
  %166 = ashr i32 %165, 1
  store i32 %166, i32* %12, align 4
  br label %133

167:                                              ; preds = %133
  %168 = load i32, i32* %5, align 4
  store i32 %168, i32* %12, align 4
  br label %169

169:                                              ; preds = %222, %167
  %170 = load i32, i32* %12, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %236

172:                                              ; preds = %169
  %173 = load i32, i32* %14, align 4
  %174 = load i32, i32* %12, align 4
  %175 = add nsw i32 %173, %174
  store i32 %175, i32* %13, align 4
  %176 = load i32, i32* %7, align 4
  store i32 %176, i32* %10, align 4
  %177 = load i32, i32* %10, align 4
  %178 = load i32, i32* %6, align 4
  %179 = icmp slt i32 %177, %178
  br i1 %179, label %188, label %180

180:                                              ; preds = %172
  %181 = load i32, i32* %10, align 4
  %182 = load i32, i32* %6, align 4
  %183 = icmp eq i32 %181, %182
  br i1 %183, label %184, label %222

184:                                              ; preds = %180
  %185 = load i32, i32* %13, align 4
  %186 = load i32, i32* %15, align 4
  %187 = icmp sle i32 %185, %186
  br i1 %187, label %188, label %222

188:                                              ; preds = %184, %172
  %189 = load i32, i32* %13, align 4
  %190 = load i32, i32* %12, align 4
  %191 = add nsw i32 %189, %190
  store i32 %191, i32* %14, align 4
  %192 = load i32, i32* %13, align 4
  %193 = load i32, i32* %5, align 4
  %194 = and i32 %192, %193
  %195 = load i32, i32* %5, align 4
  %196 = icmp eq i32 %194, %195
  br i1 %196, label %197, label %205

197:                                              ; preds = %188
  %198 = load i32, i32* %14, align 4
  %199 = load i32, i32* %5, align 4
  %200 = and i32 %198, %199
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %205

202:                                              ; preds = %197
  %203 = load i32, i32* %7, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %7, align 4
  br label %205

205:                                              ; preds = %202, %197, %188
  %206 = load i32, i32* %10, align 4
  %207 = load i32, i32* %6, align 4
  %208 = sub nsw i32 %207, %206
  store i32 %208, i32* %6, align 4
  %209 = load i32, i32* %15, align 4
  %210 = load i32, i32* %13, align 4
  %211 = icmp slt i32 %209, %210
  br i1 %211, label %212, label %215

212:                                              ; preds = %205
  %213 = load i32, i32* %6, align 4
  %214 = add nsw i32 %213, -1
  store i32 %214, i32* %6, align 4
  br label %215

215:                                              ; preds = %212, %205
  %216 = load i32, i32* %13, align 4
  %217 = load i32, i32* %15, align 4
  %218 = sub nsw i32 %217, %216
  store i32 %218, i32* %15, align 4
  %219 = load i32, i32* %12, align 4
  %220 = load i32, i32* %16, align 4
  %221 = add nsw i32 %220, %219
  store i32 %221, i32* %16, align 4
  br label %222

222:                                              ; preds = %215, %184, %180
  %223 = load i32, i32* %6, align 4
  %224 = load i32, i32* %15, align 4
  %225 = load i32, i32* %5, align 4
  %226 = and i32 %224, %225
  %227 = ashr i32 %226, 31
  %228 = add nsw i32 %223, %227
  %229 = load i32, i32* %6, align 4
  %230 = add nsw i32 %229, %228
  store i32 %230, i32* %6, align 4
  %231 = load i32, i32* %15, align 4
  %232 = load i32, i32* %15, align 4
  %233 = add nsw i32 %232, %231
  store i32 %233, i32* %15, align 4
  %234 = load i32, i32* %12, align 4
  %235 = ashr i32 %234, 1
  store i32 %235, i32* %12, align 4
  br label %169

236:                                              ; preds = %169
  %237 = load i32, i32* %6, align 4
  %238 = load i32, i32* %15, align 4
  %239 = or i32 %237, %238
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %274

241:                                              ; preds = %236
  %242 = load double, double* @tiny, align 8
  %243 = fsub double 1.000000e+00, %242
  store double %243, double* %4, align 8
  %244 = load double, double* %4, align 8
  %245 = fcmp oge double %244, 1.000000e+00
  br i1 %245, label %246, label %273

246:                                              ; preds = %241
  %247 = load double, double* @tiny, align 8
  %248 = fadd double 1.000000e+00, %247
  store double %248, double* %4, align 8
  %249 = load i32, i32* %16, align 4
  %250 = icmp eq i32 %249, -1
  br i1 %250, label %251, label %254

251:                                              ; preds = %246
  store i32 0, i32* %16, align 4
  %252 = load i32, i32* %8, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %8, align 4
  br label %272

254:                                              ; preds = %246
  %255 = load double, double* %4, align 8
  %256 = fcmp ogt double %255, 1.000000e+00
  br i1 %256, label %257, label %266

257:                                              ; preds = %254
  %258 = load i32, i32* %16, align 4
  %259 = icmp eq i32 %258, -2
  br i1 %259, label %260, label %263

260:                                              ; preds = %257
  %261 = load i32, i32* %8, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %8, align 4
  br label %263

263:                                              ; preds = %260, %257
  %264 = load i32, i32* %16, align 4
  %265 = add nsw i32 %264, 2
  store i32 %265, i32* %16, align 4
  br label %271

266:                                              ; preds = %254
  %267 = load i32, i32* %16, align 4
  %268 = and i32 %267, 1
  %269 = load i32, i32* %16, align 4
  %270 = add nsw i32 %269, %268
  store i32 %270, i32* %16, align 4
  br label %271

271:                                              ; preds = %266, %263
  br label %272

272:                                              ; preds = %271, %251
  br label %273

273:                                              ; preds = %272, %241
  br label %274

274:                                              ; preds = %273, %236
  %275 = load i32, i32* %8, align 4
  %276 = ashr i32 %275, 1
  %277 = add nsw i32 %276, 1071644672
  store i32 %277, i32* %6, align 4
  %278 = load i32, i32* %16, align 4
  %279 = ashr i32 %278, 1
  store i32 %279, i32* %15, align 4
  %280 = load i32, i32* %8, align 4
  %281 = and i32 %280, 1
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %287

283:                                              ; preds = %274
  %284 = load i32, i32* %5, align 4
  %285 = load i32, i32* %15, align 4
  %286 = or i32 %285, %284
  store i32 %286, i32* %15, align 4
  br label %287

287:                                              ; preds = %283, %274
  %288 = load i32, i32* %9, align 4
  %289 = shl i32 %288, 20
  %290 = load i32, i32* %6, align 4
  %291 = add nsw i32 %290, %289
  store i32 %291, i32* %6, align 4
  %292 = load double, double* %4, align 8
  %293 = load i32, i32* %6, align 4
  %294 = load i32, i32* %15, align 4
  %295 = call i32 @INSERT_WORDS(double %292, i32 %293, i32 %294)
  %296 = load double, double* %4, align 8
  store double %296, double* %2, align 8
  br label %297

297:                                              ; preds = %287, %46, %41, %24
  %298 = load double, double* %2, align 8
  ret double %298
}

declare dso_local i32 @EXTRACT_WORDS(i32, i32, double) #1

declare dso_local i32 @INSERT_WORDS(double, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
