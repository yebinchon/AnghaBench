; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_d_lapack.c_dlaev2_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_d_lapack.c_dlaev2_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dlaev2_.ab = internal global i32 0, align 4
@dlaev2_.df = internal global i32 0, align 4
@dlaev2_.cs = internal global i32 0, align 4
@dlaev2_.ct = internal global i32 0, align 4
@dlaev2_.tb = internal global i32 0, align 4
@dlaev2_.sm = internal global i32 0, align 4
@dlaev2_.tn = internal global i32 0, align 4
@dlaev2_.rt = internal global i32 0, align 4
@dlaev2_.adf = internal global i32 0, align 4
@dlaev2_.acs = internal global i32 0, align 4
@dlaev2_.sgn1 = internal global i32 0, align 4
@dlaev2_.sgn2 = internal global i32 0, align 4
@dlaev2_.acmn = internal global i32 0, align 4
@dlaev2_.acmx = internal global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlaev2_(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = load i32, i32* %16, align 4
  %18 = load i32*, i32** %10, align 8
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %17, %19
  store i32 %20, i32* @dlaev2_.sm, align 4
  %21 = load i32*, i32** %8, align 8
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** %10, align 8
  %24 = load i32, i32* %23, align 4
  %25 = sub nsw i32 %22, %24
  store i32 %25, i32* @dlaev2_.df, align 4
  %26 = load i32, i32* @dlaev2_.df, align 4
  %27 = call i32 @abs(i32 %26) #3
  store i32 %27, i32* @dlaev2_.adf, align 4
  %28 = load i32*, i32** %9, align 8
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %9, align 8
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %29, %31
  store i32 %32, i32* @dlaev2_.tb, align 4
  %33 = load i32, i32* @dlaev2_.tb, align 4
  %34 = call i32 @abs(i32 %33) #3
  store i32 %34, i32* @dlaev2_.ab, align 4
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @abs(i32 %36) #3
  %38 = load i32*, i32** %10, align 8
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @abs(i32 %39) #3
  %41 = icmp sgt i32 %37, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %7
  %43 = load i32*, i32** %8, align 8
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* @dlaev2_.acmx, align 4
  %45 = load i32*, i32** %10, align 8
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* @dlaev2_.acmn, align 4
  br label %52

47:                                               ; preds = %7
  %48 = load i32*, i32** %10, align 8
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* @dlaev2_.acmx, align 4
  %50 = load i32*, i32** %8, align 8
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* @dlaev2_.acmn, align 4
  br label %52

52:                                               ; preds = %47, %42
  %53 = load i32, i32* @dlaev2_.adf, align 4
  %54 = load i32, i32* @dlaev2_.ab, align 4
  %55 = icmp sgt i32 %53, %54
  br i1 %55, label %56, label %69

56:                                               ; preds = %52
  %57 = load i32, i32* @dlaev2_.ab, align 4
  %58 = load i32, i32* @dlaev2_.adf, align 4
  %59 = sdiv i32 %57, %58
  store i32 %59, i32* %15, align 4
  %60 = load i32, i32* @dlaev2_.adf, align 4
  %61 = load i32, i32* %15, align 4
  %62 = load i32, i32* %15, align 4
  %63 = mul nsw i32 %61, %62
  %64 = sitofp i32 %63 to double
  %65 = fadd double %64, 1.000000e+00
  %66 = fptosi double %65 to i32
  %67 = call i32 @sqrt(i32 %66)
  %68 = mul nsw i32 %60, %67
  store i32 %68, i32* @dlaev2_.rt, align 4
  br label %91

69:                                               ; preds = %52
  %70 = load i32, i32* @dlaev2_.adf, align 4
  %71 = load i32, i32* @dlaev2_.ab, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %86

73:                                               ; preds = %69
  %74 = load i32, i32* @dlaev2_.adf, align 4
  %75 = load i32, i32* @dlaev2_.ab, align 4
  %76 = sdiv i32 %74, %75
  store i32 %76, i32* %15, align 4
  %77 = load i32, i32* @dlaev2_.ab, align 4
  %78 = load i32, i32* %15, align 4
  %79 = load i32, i32* %15, align 4
  %80 = mul nsw i32 %78, %79
  %81 = sitofp i32 %80 to double
  %82 = fadd double %81, 1.000000e+00
  %83 = fptosi double %82 to i32
  %84 = call i32 @sqrt(i32 %83)
  %85 = mul nsw i32 %77, %84
  store i32 %85, i32* @dlaev2_.rt, align 4
  br label %90

86:                                               ; preds = %69
  %87 = load i32, i32* @dlaev2_.ab, align 4
  %88 = call i32 @sqrt(i32 2)
  %89 = mul nsw i32 %87, %88
  store i32 %89, i32* @dlaev2_.rt, align 4
  br label %90

90:                                               ; preds = %86, %73
  br label %91

91:                                               ; preds = %90, %56
  %92 = load i32, i32* @dlaev2_.sm, align 4
  %93 = sitofp i32 %92 to double
  %94 = fcmp olt double %93, 0.000000e+00
  br i1 %94, label %95, label %119

95:                                               ; preds = %91
  %96 = load i32, i32* @dlaev2_.sm, align 4
  %97 = load i32, i32* @dlaev2_.rt, align 4
  %98 = sub nsw i32 %96, %97
  %99 = sitofp i32 %98 to double
  %100 = fmul double %99, 5.000000e-01
  %101 = fptosi double %100 to i32
  %102 = load i32*, i32** %11, align 8
  store i32 %101, i32* %102, align 4
  store i32 -1, i32* @dlaev2_.sgn1, align 4
  %103 = load i32, i32* @dlaev2_.acmx, align 4
  %104 = load i32*, i32** %11, align 8
  %105 = load i32, i32* %104, align 4
  %106 = sdiv i32 %103, %105
  %107 = load i32, i32* @dlaev2_.acmn, align 4
  %108 = mul nsw i32 %106, %107
  %109 = load i32*, i32** %9, align 8
  %110 = load i32, i32* %109, align 4
  %111 = load i32*, i32** %11, align 8
  %112 = load i32, i32* %111, align 4
  %113 = sdiv i32 %110, %112
  %114 = load i32*, i32** %9, align 8
  %115 = load i32, i32* %114, align 4
  %116 = mul nsw i32 %113, %115
  %117 = sub nsw i32 %108, %116
  %118 = load i32*, i32** %12, align 8
  store i32 %117, i32* %118, align 4
  br label %159

119:                                              ; preds = %91
  %120 = load i32, i32* @dlaev2_.sm, align 4
  %121 = sitofp i32 %120 to double
  %122 = fcmp ogt double %121, 0.000000e+00
  br i1 %122, label %123, label %147

123:                                              ; preds = %119
  %124 = load i32, i32* @dlaev2_.sm, align 4
  %125 = load i32, i32* @dlaev2_.rt, align 4
  %126 = add nsw i32 %124, %125
  %127 = sitofp i32 %126 to double
  %128 = fmul double %127, 5.000000e-01
  %129 = fptosi double %128 to i32
  %130 = load i32*, i32** %11, align 8
  store i32 %129, i32* %130, align 4
  store i32 1, i32* @dlaev2_.sgn1, align 4
  %131 = load i32, i32* @dlaev2_.acmx, align 4
  %132 = load i32*, i32** %11, align 8
  %133 = load i32, i32* %132, align 4
  %134 = sdiv i32 %131, %133
  %135 = load i32, i32* @dlaev2_.acmn, align 4
  %136 = mul nsw i32 %134, %135
  %137 = load i32*, i32** %9, align 8
  %138 = load i32, i32* %137, align 4
  %139 = load i32*, i32** %11, align 8
  %140 = load i32, i32* %139, align 4
  %141 = sdiv i32 %138, %140
  %142 = load i32*, i32** %9, align 8
  %143 = load i32, i32* %142, align 4
  %144 = mul nsw i32 %141, %143
  %145 = sub nsw i32 %136, %144
  %146 = load i32*, i32** %12, align 8
  store i32 %145, i32* %146, align 4
  br label %158

147:                                              ; preds = %119
  %148 = load i32, i32* @dlaev2_.rt, align 4
  %149 = sitofp i32 %148 to double
  %150 = fmul double %149, 5.000000e-01
  %151 = fptosi double %150 to i32
  %152 = load i32*, i32** %11, align 8
  store i32 %151, i32* %152, align 4
  %153 = load i32, i32* @dlaev2_.rt, align 4
  %154 = sitofp i32 %153 to double
  %155 = fmul double %154, -5.000000e-01
  %156 = fptosi double %155 to i32
  %157 = load i32*, i32** %12, align 8
  store i32 %156, i32* %157, align 4
  store i32 1, i32* @dlaev2_.sgn1, align 4
  br label %158

158:                                              ; preds = %147, %123
  br label %159

159:                                              ; preds = %158, %95
  %160 = load i32, i32* @dlaev2_.df, align 4
  %161 = sitofp i32 %160 to double
  %162 = fcmp oge double %161, 0.000000e+00
  br i1 %162, label %163, label %167

163:                                              ; preds = %159
  %164 = load i32, i32* @dlaev2_.df, align 4
  %165 = load i32, i32* @dlaev2_.rt, align 4
  %166 = add nsw i32 %164, %165
  store i32 %166, i32* @dlaev2_.cs, align 4
  store i32 1, i32* @dlaev2_.sgn2, align 4
  br label %171

167:                                              ; preds = %159
  %168 = load i32, i32* @dlaev2_.df, align 4
  %169 = load i32, i32* @dlaev2_.rt, align 4
  %170 = sub nsw i32 %168, %169
  store i32 %170, i32* @dlaev2_.cs, align 4
  store i32 -1, i32* @dlaev2_.sgn2, align 4
  br label %171

171:                                              ; preds = %167, %163
  %172 = load i32, i32* @dlaev2_.cs, align 4
  %173 = call i32 @abs(i32 %172) #3
  store i32 %173, i32* @dlaev2_.acs, align 4
  %174 = load i32, i32* @dlaev2_.acs, align 4
  %175 = load i32, i32* @dlaev2_.ab, align 4
  %176 = icmp sgt i32 %174, %175
  br i1 %176, label %177, label %198

177:                                              ; preds = %171
  %178 = load i32, i32* @dlaev2_.tb, align 4
  %179 = sub nsw i32 0, %178
  %180 = load i32, i32* @dlaev2_.cs, align 4
  %181 = sdiv i32 %179, %180
  store i32 %181, i32* @dlaev2_.ct, align 4
  %182 = load i32, i32* @dlaev2_.ct, align 4
  %183 = load i32, i32* @dlaev2_.ct, align 4
  %184 = mul nsw i32 %182, %183
  %185 = sitofp i32 %184 to double
  %186 = fadd double %185, 1.000000e+00
  %187 = fptosi double %186 to i32
  %188 = call i32 @sqrt(i32 %187)
  %189 = sitofp i32 %188 to double
  %190 = fdiv double 1.000000e+00, %189
  %191 = fptosi double %190 to i32
  %192 = load i32*, i32** %14, align 8
  store i32 %191, i32* %192, align 4
  %193 = load i32, i32* @dlaev2_.ct, align 4
  %194 = load i32*, i32** %14, align 8
  %195 = load i32, i32* %194, align 4
  %196 = mul nsw i32 %193, %195
  %197 = load i32*, i32** %13, align 8
  store i32 %196, i32* %197, align 4
  br label %227

198:                                              ; preds = %171
  %199 = load i32, i32* @dlaev2_.ab, align 4
  %200 = sitofp i32 %199 to double
  %201 = fcmp oeq double %200, 0.000000e+00
  br i1 %201, label %202, label %205

202:                                              ; preds = %198
  %203 = load i32*, i32** %13, align 8
  store i32 1, i32* %203, align 4
  %204 = load i32*, i32** %14, align 8
  store i32 0, i32* %204, align 4
  br label %226

205:                                              ; preds = %198
  %206 = load i32, i32* @dlaev2_.cs, align 4
  %207 = sub nsw i32 0, %206
  %208 = load i32, i32* @dlaev2_.tb, align 4
  %209 = sdiv i32 %207, %208
  store i32 %209, i32* @dlaev2_.tn, align 4
  %210 = load i32, i32* @dlaev2_.tn, align 4
  %211 = load i32, i32* @dlaev2_.tn, align 4
  %212 = mul nsw i32 %210, %211
  %213 = sitofp i32 %212 to double
  %214 = fadd double %213, 1.000000e+00
  %215 = fptosi double %214 to i32
  %216 = call i32 @sqrt(i32 %215)
  %217 = sitofp i32 %216 to double
  %218 = fdiv double 1.000000e+00, %217
  %219 = fptosi double %218 to i32
  %220 = load i32*, i32** %13, align 8
  store i32 %219, i32* %220, align 4
  %221 = load i32, i32* @dlaev2_.tn, align 4
  %222 = load i32*, i32** %13, align 8
  %223 = load i32, i32* %222, align 4
  %224 = mul nsw i32 %221, %223
  %225 = load i32*, i32** %14, align 8
  store i32 %224, i32* %225, align 4
  br label %226

226:                                              ; preds = %205, %202
  br label %227

227:                                              ; preds = %226, %177
  %228 = load i32, i32* @dlaev2_.sgn1, align 4
  %229 = load i32, i32* @dlaev2_.sgn2, align 4
  %230 = icmp eq i32 %228, %229
  br i1 %230, label %231, label %240

231:                                              ; preds = %227
  %232 = load i32*, i32** %13, align 8
  %233 = load i32, i32* %232, align 4
  store i32 %233, i32* @dlaev2_.tn, align 4
  %234 = load i32*, i32** %14, align 8
  %235 = load i32, i32* %234, align 4
  %236 = sub nsw i32 0, %235
  %237 = load i32*, i32** %13, align 8
  store i32 %236, i32* %237, align 4
  %238 = load i32, i32* @dlaev2_.tn, align 4
  %239 = load i32*, i32** %14, align 8
  store i32 %238, i32* %239, align 4
  br label %240

240:                                              ; preds = %231, %227
  ret i32 0
}

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #1

declare dso_local i32 @sqrt(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
