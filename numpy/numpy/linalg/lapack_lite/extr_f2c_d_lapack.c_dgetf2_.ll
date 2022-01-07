; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_d_lapack.c_dgetf2_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_d_lapack.c_dgetf2_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dgetf2_.i__ = internal global i32 0, align 4
@dgetf2_.j = internal global i32 0, align 4
@dgetf2_.jp = internal global i32 0, align 4
@dgetf2_.sfmin = internal global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"DGETF2\00", align 1
@SAFEMINIMUM = common dso_local global i32 0, align 4
@c__1 = common dso_local global i32 0, align 4
@c_b151 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dgetf2_(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %20 = load i32*, i32** %11, align 8
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %14, align 4
  %22 = load i32, i32* %14, align 4
  %23 = add nsw i32 1, %22
  store i32 %23, i32* %15, align 4
  %24 = load i32, i32* %15, align 4
  %25 = load i32*, i32** %10, align 8
  %26 = sext i32 %24 to i64
  %27 = sub i64 0, %26
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  store i32* %28, i32** %10, align 8
  %29 = load i32*, i32** %12, align 8
  %30 = getelementptr inbounds i32, i32* %29, i32 -1
  store i32* %30, i32** %12, align 8
  %31 = load i32*, i32** %13, align 8
  store i32 0, i32* %31, align 4
  %32 = load i32*, i32** %8, align 8
  %33 = load i32, i32* %32, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %6
  %36 = load i32*, i32** %13, align 8
  store i32 -1, i32* %36, align 4
  br label %54

37:                                               ; preds = %6
  %38 = load i32*, i32** %9, align 8
  %39 = load i32, i32* %38, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i32*, i32** %13, align 8
  store i32 -2, i32* %42, align 4
  br label %53

43:                                               ; preds = %37
  %44 = load i32*, i32** %11, align 8
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %8, align 8
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @max(i32 1, i32 %47)
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i32*, i32** %13, align 8
  store i32 -4, i32* %51, align 4
  br label %52

52:                                               ; preds = %50, %43
  br label %53

53:                                               ; preds = %52, %41
  br label %54

54:                                               ; preds = %53, %35
  %55 = load i32*, i32** %13, align 8
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = load i32*, i32** %13, align 8
  %60 = load i32, i32* %59, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %16, align 4
  %62 = call i32 @xerbla_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %16)
  store i32 0, i32* %7, align 4
  br label %282

63:                                               ; preds = %54
  %64 = load i32*, i32** %8, align 8
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %63
  %68 = load i32*, i32** %9, align 8
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %67, %63
  store i32 0, i32* %7, align 4
  br label %282

72:                                               ; preds = %67
  %73 = load i32, i32* @SAFEMINIMUM, align 4
  store i32 %73, i32* @dgetf2_.sfmin, align 4
  %74 = load i32*, i32** %8, align 8
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** %9, align 8
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @min(i32 %75, i32 %77)
  store i32 %78, i32* %16, align 4
  store i32 1, i32* @dgetf2_.j, align 4
  br label %79

79:                                               ; preds = %278, %72
  %80 = load i32, i32* @dgetf2_.j, align 4
  %81 = load i32, i32* %16, align 4
  %82 = icmp sle i32 %80, %81
  br i1 %82, label %83, label %281

83:                                               ; preds = %79
  %84 = load i32*, i32** %8, align 8
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @dgetf2_.j, align 4
  %87 = sub nsw i32 %85, %86
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %17, align 4
  %89 = load i32, i32* @dgetf2_.j, align 4
  %90 = sub nsw i32 %89, 1
  %91 = load i32*, i32** %10, align 8
  %92 = load i32, i32* @dgetf2_.j, align 4
  %93 = load i32, i32* @dgetf2_.j, align 4
  %94 = load i32, i32* %14, align 4
  %95 = mul nsw i32 %93, %94
  %96 = add nsw i32 %92, %95
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %91, i64 %97
  %99 = call i32 @idamax_(i32* %17, i32* %98, i32* @c__1)
  %100 = add nsw i32 %90, %99
  store i32 %100, i32* @dgetf2_.jp, align 4
  %101 = load i32, i32* @dgetf2_.jp, align 4
  %102 = load i32*, i32** %12, align 8
  %103 = load i32, i32* @dgetf2_.j, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  store i32 %101, i32* %105, align 4
  %106 = load i32*, i32** %10, align 8
  %107 = load i32, i32* @dgetf2_.jp, align 4
  %108 = load i32, i32* @dgetf2_.j, align 4
  %109 = load i32, i32* %14, align 4
  %110 = mul nsw i32 %108, %109
  %111 = add nsw i32 %107, %110
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %106, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = sitofp i32 %114 to double
  %116 = fcmp une double %115, 0.000000e+00
  br i1 %116, label %117, label %221

117:                                              ; preds = %83
  %118 = load i32, i32* @dgetf2_.jp, align 4
  %119 = load i32, i32* @dgetf2_.j, align 4
  %120 = icmp ne i32 %118, %119
  br i1 %120, label %121, label %138

121:                                              ; preds = %117
  %122 = load i32*, i32** %9, align 8
  %123 = load i32*, i32** %10, align 8
  %124 = load i32, i32* @dgetf2_.j, align 4
  %125 = load i32, i32* %14, align 4
  %126 = add nsw i32 %124, %125
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %123, i64 %127
  %129 = load i32*, i32** %11, align 8
  %130 = load i32*, i32** %10, align 8
  %131 = load i32, i32* @dgetf2_.jp, align 4
  %132 = load i32, i32* %14, align 4
  %133 = add nsw i32 %131, %132
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %130, i64 %134
  %136 = load i32*, i32** %11, align 8
  %137 = call i32 @dswap_(i32* %122, i32* %128, i32* %129, i32* %135, i32* %136)
  br label %138

138:                                              ; preds = %121, %117
  %139 = load i32, i32* @dgetf2_.j, align 4
  %140 = load i32*, i32** %8, align 8
  %141 = load i32, i32* %140, align 4
  %142 = icmp slt i32 %139, %141
  br i1 %142, label %143, label %220

143:                                              ; preds = %138
  %144 = load i32*, i32** %10, align 8
  %145 = load i32, i32* @dgetf2_.j, align 4
  %146 = load i32, i32* @dgetf2_.j, align 4
  %147 = load i32, i32* %14, align 4
  %148 = mul nsw i32 %146, %147
  %149 = add nsw i32 %145, %148
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %144, i64 %150
  %152 = load i32, i32* %151, align 4
  store i32 %152, i32* %19, align 4
  %153 = load i32, i32* %19, align 4
  %154 = call i32 @abs(i32 %153) #3
  %155 = load i32, i32* @dgetf2_.sfmin, align 4
  %156 = icmp sge i32 %154, %155
  br i1 %156, label %157, label %184

157:                                              ; preds = %143
  %158 = load i32*, i32** %8, align 8
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @dgetf2_.j, align 4
  %161 = sub nsw i32 %159, %160
  store i32 %161, i32* %17, align 4
  %162 = load i32*, i32** %10, align 8
  %163 = load i32, i32* @dgetf2_.j, align 4
  %164 = load i32, i32* @dgetf2_.j, align 4
  %165 = load i32, i32* %14, align 4
  %166 = mul nsw i32 %164, %165
  %167 = add nsw i32 %163, %166
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %162, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = sitofp i32 %170 to double
  %172 = fdiv double 1.000000e+00, %171
  %173 = fptosi double %172 to i32
  store i32 %173, i32* %19, align 4
  %174 = load i32*, i32** %10, align 8
  %175 = load i32, i32* @dgetf2_.j, align 4
  %176 = add nsw i32 %175, 1
  %177 = load i32, i32* @dgetf2_.j, align 4
  %178 = load i32, i32* %14, align 4
  %179 = mul nsw i32 %177, %178
  %180 = add nsw i32 %176, %179
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %174, i64 %181
  %183 = call i32 @dscal_(i32* %17, i32* %19, i32* %182, i32* @c__1)
  br label %219

184:                                              ; preds = %143
  %185 = load i32*, i32** %8, align 8
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @dgetf2_.j, align 4
  %188 = sub nsw i32 %186, %187
  store i32 %188, i32* %17, align 4
  store i32 1, i32* @dgetf2_.i__, align 4
  br label %189

189:                                              ; preds = %215, %184
  %190 = load i32, i32* @dgetf2_.i__, align 4
  %191 = load i32, i32* %17, align 4
  %192 = icmp sle i32 %190, %191
  br i1 %192, label %193, label %218

193:                                              ; preds = %189
  %194 = load i32*, i32** %10, align 8
  %195 = load i32, i32* @dgetf2_.j, align 4
  %196 = load i32, i32* @dgetf2_.j, align 4
  %197 = load i32, i32* %14, align 4
  %198 = mul nsw i32 %196, %197
  %199 = add nsw i32 %195, %198
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %194, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = load i32*, i32** %10, align 8
  %204 = load i32, i32* @dgetf2_.j, align 4
  %205 = load i32, i32* @dgetf2_.i__, align 4
  %206 = add nsw i32 %204, %205
  %207 = load i32, i32* @dgetf2_.j, align 4
  %208 = load i32, i32* %14, align 4
  %209 = mul nsw i32 %207, %208
  %210 = add nsw i32 %206, %209
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %203, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = sdiv i32 %213, %202
  store i32 %214, i32* %212, align 4
  br label %215

215:                                              ; preds = %193
  %216 = load i32, i32* @dgetf2_.i__, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* @dgetf2_.i__, align 4
  br label %189

218:                                              ; preds = %189
  br label %219

219:                                              ; preds = %218, %157
  br label %220

220:                                              ; preds = %219, %138
  br label %229

221:                                              ; preds = %83
  %222 = load i32*, i32** %13, align 8
  %223 = load i32, i32* %222, align 4
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %228

225:                                              ; preds = %221
  %226 = load i32, i32* @dgetf2_.j, align 4
  %227 = load i32*, i32** %13, align 8
  store i32 %226, i32* %227, align 4
  br label %228

228:                                              ; preds = %225, %221
  br label %229

229:                                              ; preds = %228, %220
  %230 = load i32, i32* @dgetf2_.j, align 4
  %231 = load i32*, i32** %8, align 8
  %232 = load i32, i32* %231, align 4
  %233 = load i32*, i32** %9, align 8
  %234 = load i32, i32* %233, align 4
  %235 = call i32 @min(i32 %232, i32 %234)
  %236 = icmp slt i32 %230, %235
  br i1 %236, label %237, label %277

237:                                              ; preds = %229
  %238 = load i32*, i32** %8, align 8
  %239 = load i32, i32* %238, align 4
  %240 = load i32, i32* @dgetf2_.j, align 4
  %241 = sub nsw i32 %239, %240
  store i32 %241, i32* %17, align 4
  %242 = load i32*, i32** %9, align 8
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* @dgetf2_.j, align 4
  %245 = sub nsw i32 %243, %244
  store i32 %245, i32* %18, align 4
  %246 = load i32*, i32** %10, align 8
  %247 = load i32, i32* @dgetf2_.j, align 4
  %248 = add nsw i32 %247, 1
  %249 = load i32, i32* @dgetf2_.j, align 4
  %250 = load i32, i32* %14, align 4
  %251 = mul nsw i32 %249, %250
  %252 = add nsw i32 %248, %251
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i32, i32* %246, i64 %253
  %255 = load i32*, i32** %10, align 8
  %256 = load i32, i32* @dgetf2_.j, align 4
  %257 = load i32, i32* @dgetf2_.j, align 4
  %258 = add nsw i32 %257, 1
  %259 = load i32, i32* %14, align 4
  %260 = mul nsw i32 %258, %259
  %261 = add nsw i32 %256, %260
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i32, i32* %255, i64 %262
  %264 = load i32*, i32** %11, align 8
  %265 = load i32*, i32** %10, align 8
  %266 = load i32, i32* @dgetf2_.j, align 4
  %267 = add nsw i32 %266, 1
  %268 = load i32, i32* @dgetf2_.j, align 4
  %269 = add nsw i32 %268, 1
  %270 = load i32, i32* %14, align 4
  %271 = mul nsw i32 %269, %270
  %272 = add nsw i32 %267, %271
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i32, i32* %265, i64 %273
  %275 = load i32*, i32** %11, align 8
  %276 = call i32 @dger_(i32* %17, i32* %18, i32* @c_b151, i32* %254, i32* @c__1, i32* %263, i32* %264, i32* %274, i32* %275)
  br label %277

277:                                              ; preds = %237, %229
  br label %278

278:                                              ; preds = %277
  %279 = load i32, i32* @dgetf2_.j, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* @dgetf2_.j, align 4
  br label %79

281:                                              ; preds = %79
  store i32 0, i32* %7, align 4
  br label %282

282:                                              ; preds = %281, %71, %58
  %283 = load i32, i32* %7, align 4
  ret i32 %283
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @xerbla_(i8*, i32*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @idamax_(i32*, i32*, i32*) #1

declare dso_local i32 @dswap_(i32*, i32*, i32*, i32*, i32*) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i32 @dscal_(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @dger_(i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
