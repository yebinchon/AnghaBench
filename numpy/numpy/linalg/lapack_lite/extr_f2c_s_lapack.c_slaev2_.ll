; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_s_lapack.c_slaev2_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_s_lapack.c_slaev2_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@slaev2_.ab = internal global float 0.000000e+00, align 4
@slaev2_.df = internal global float 0.000000e+00, align 4
@slaev2_.cs = internal global float 0.000000e+00, align 4
@slaev2_.ct = internal global float 0.000000e+00, align 4
@slaev2_.tb = internal global float 0.000000e+00, align 4
@slaev2_.sm = internal global float 0.000000e+00, align 4
@slaev2_.tn = internal global float 0.000000e+00, align 4
@slaev2_.rt = internal global float 0.000000e+00, align 4
@slaev2_.adf = internal global float 0.000000e+00, align 4
@slaev2_.acs = internal global float 0.000000e+00, align 4
@slaev2_.sgn1 = internal global i32 0, align 4
@slaev2_.sgn2 = internal global i32 0, align 4
@slaev2_.acmn = internal global float 0.000000e+00, align 4
@slaev2_.acmx = internal global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @slaev2_(float* %0, float* %1, float* %2, float* %3, float* %4, float* %5, float* %6) #0 {
  %8 = alloca float*, align 8
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca float*, align 8
  %14 = alloca float*, align 8
  %15 = alloca float, align 4
  store float* %0, float** %8, align 8
  store float* %1, float** %9, align 8
  store float* %2, float** %10, align 8
  store float* %3, float** %11, align 8
  store float* %4, float** %12, align 8
  store float* %5, float** %13, align 8
  store float* %6, float** %14, align 8
  %16 = load float*, float** %8, align 8
  %17 = load float, float* %16, align 4
  %18 = load float*, float** %10, align 8
  %19 = load float, float* %18, align 4
  %20 = fadd float %17, %19
  store float %20, float* @slaev2_.sm, align 4
  %21 = load float*, float** %8, align 8
  %22 = load float, float* %21, align 4
  %23 = load float*, float** %10, align 8
  %24 = load float, float* %23, align 4
  %25 = fsub float %22, %24
  store float %25, float* @slaev2_.df, align 4
  %26 = load float, float* @slaev2_.df, align 4
  %27 = call float @dabs(float %26)
  store float %27, float* @slaev2_.adf, align 4
  %28 = load float*, float** %9, align 8
  %29 = load float, float* %28, align 4
  %30 = load float*, float** %9, align 8
  %31 = load float, float* %30, align 4
  %32 = fadd float %29, %31
  store float %32, float* @slaev2_.tb, align 4
  %33 = load float, float* @slaev2_.tb, align 4
  %34 = call float @dabs(float %33)
  store float %34, float* @slaev2_.ab, align 4
  %35 = load float*, float** %8, align 8
  %36 = load float, float* %35, align 4
  %37 = call float @dabs(float %36)
  %38 = load float*, float** %10, align 8
  %39 = load float, float* %38, align 4
  %40 = call float @dabs(float %39)
  %41 = fcmp ogt float %37, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %7
  %43 = load float*, float** %8, align 8
  %44 = load float, float* %43, align 4
  store float %44, float* @slaev2_.acmx, align 4
  %45 = load float*, float** %10, align 8
  %46 = load float, float* %45, align 4
  store float %46, float* @slaev2_.acmn, align 4
  br label %52

47:                                               ; preds = %7
  %48 = load float*, float** %10, align 8
  %49 = load float, float* %48, align 4
  store float %49, float* @slaev2_.acmx, align 4
  %50 = load float*, float** %8, align 8
  %51 = load float, float* %50, align 4
  store float %51, float* @slaev2_.acmn, align 4
  br label %52

52:                                               ; preds = %47, %42
  %53 = load float, float* @slaev2_.adf, align 4
  %54 = load float, float* @slaev2_.ab, align 4
  %55 = fcmp ogt float %53, %54
  br i1 %55, label %56, label %67

56:                                               ; preds = %52
  %57 = load float, float* @slaev2_.ab, align 4
  %58 = load float, float* @slaev2_.adf, align 4
  %59 = fdiv float %57, %58
  store float %59, float* %15, align 4
  %60 = load float, float* @slaev2_.adf, align 4
  %61 = load float, float* %15, align 4
  %62 = load float, float* %15, align 4
  %63 = fmul float %61, %62
  %64 = fadd float %63, 1.000000e+00
  %65 = call float @sqrt(float %64)
  %66 = fmul float %60, %65
  store float %66, float* @slaev2_.rt, align 4
  br label %87

67:                                               ; preds = %52
  %68 = load float, float* @slaev2_.adf, align 4
  %69 = load float, float* @slaev2_.ab, align 4
  %70 = fcmp olt float %68, %69
  br i1 %70, label %71, label %82

71:                                               ; preds = %67
  %72 = load float, float* @slaev2_.adf, align 4
  %73 = load float, float* @slaev2_.ab, align 4
  %74 = fdiv float %72, %73
  store float %74, float* %15, align 4
  %75 = load float, float* @slaev2_.ab, align 4
  %76 = load float, float* %15, align 4
  %77 = load float, float* %15, align 4
  %78 = fmul float %76, %77
  %79 = fadd float %78, 1.000000e+00
  %80 = call float @sqrt(float %79)
  %81 = fmul float %75, %80
  store float %81, float* @slaev2_.rt, align 4
  br label %86

82:                                               ; preds = %67
  %83 = load float, float* @slaev2_.ab, align 4
  %84 = call float @sqrt(float 2.000000e+00)
  %85 = fmul float %83, %84
  store float %85, float* @slaev2_.rt, align 4
  br label %86

86:                                               ; preds = %82, %71
  br label %87

87:                                               ; preds = %86, %56
  %88 = load float, float* @slaev2_.sm, align 4
  %89 = fcmp olt float %88, 0.000000e+00
  br i1 %89, label %90, label %112

90:                                               ; preds = %87
  %91 = load float, float* @slaev2_.sm, align 4
  %92 = load float, float* @slaev2_.rt, align 4
  %93 = fsub float %91, %92
  %94 = fmul float %93, 5.000000e-01
  %95 = load float*, float** %11, align 8
  store float %94, float* %95, align 4
  store i32 -1, i32* @slaev2_.sgn1, align 4
  %96 = load float, float* @slaev2_.acmx, align 4
  %97 = load float*, float** %11, align 8
  %98 = load float, float* %97, align 4
  %99 = fdiv float %96, %98
  %100 = load float, float* @slaev2_.acmn, align 4
  %101 = fmul float %99, %100
  %102 = load float*, float** %9, align 8
  %103 = load float, float* %102, align 4
  %104 = load float*, float** %11, align 8
  %105 = load float, float* %104, align 4
  %106 = fdiv float %103, %105
  %107 = load float*, float** %9, align 8
  %108 = load float, float* %107, align 4
  %109 = fmul float %106, %108
  %110 = fsub float %101, %109
  %111 = load float*, float** %12, align 8
  store float %110, float* %111, align 4
  br label %145

112:                                              ; preds = %87
  %113 = load float, float* @slaev2_.sm, align 4
  %114 = fcmp ogt float %113, 0.000000e+00
  br i1 %114, label %115, label %137

115:                                              ; preds = %112
  %116 = load float, float* @slaev2_.sm, align 4
  %117 = load float, float* @slaev2_.rt, align 4
  %118 = fadd float %116, %117
  %119 = fmul float %118, 5.000000e-01
  %120 = load float*, float** %11, align 8
  store float %119, float* %120, align 4
  store i32 1, i32* @slaev2_.sgn1, align 4
  %121 = load float, float* @slaev2_.acmx, align 4
  %122 = load float*, float** %11, align 8
  %123 = load float, float* %122, align 4
  %124 = fdiv float %121, %123
  %125 = load float, float* @slaev2_.acmn, align 4
  %126 = fmul float %124, %125
  %127 = load float*, float** %9, align 8
  %128 = load float, float* %127, align 4
  %129 = load float*, float** %11, align 8
  %130 = load float, float* %129, align 4
  %131 = fdiv float %128, %130
  %132 = load float*, float** %9, align 8
  %133 = load float, float* %132, align 4
  %134 = fmul float %131, %133
  %135 = fsub float %126, %134
  %136 = load float*, float** %12, align 8
  store float %135, float* %136, align 4
  br label %144

137:                                              ; preds = %112
  %138 = load float, float* @slaev2_.rt, align 4
  %139 = fmul float %138, 5.000000e-01
  %140 = load float*, float** %11, align 8
  store float %139, float* %140, align 4
  %141 = load float, float* @slaev2_.rt, align 4
  %142 = fmul float %141, -5.000000e-01
  %143 = load float*, float** %12, align 8
  store float %142, float* %143, align 4
  store i32 1, i32* @slaev2_.sgn1, align 4
  br label %144

144:                                              ; preds = %137, %115
  br label %145

145:                                              ; preds = %144, %90
  %146 = load float, float* @slaev2_.df, align 4
  %147 = fcmp oge float %146, 0.000000e+00
  br i1 %147, label %148, label %152

148:                                              ; preds = %145
  %149 = load float, float* @slaev2_.df, align 4
  %150 = load float, float* @slaev2_.rt, align 4
  %151 = fadd float %149, %150
  store float %151, float* @slaev2_.cs, align 4
  store i32 1, i32* @slaev2_.sgn2, align 4
  br label %156

152:                                              ; preds = %145
  %153 = load float, float* @slaev2_.df, align 4
  %154 = load float, float* @slaev2_.rt, align 4
  %155 = fsub float %153, %154
  store float %155, float* @slaev2_.cs, align 4
  store i32 -1, i32* @slaev2_.sgn2, align 4
  br label %156

156:                                              ; preds = %152, %148
  %157 = load float, float* @slaev2_.cs, align 4
  %158 = call float @dabs(float %157)
  store float %158, float* @slaev2_.acs, align 4
  %159 = load float, float* @slaev2_.acs, align 4
  %160 = load float, float* @slaev2_.ab, align 4
  %161 = fcmp ogt float %159, %160
  br i1 %161, label %162, label %179

162:                                              ; preds = %156
  %163 = load float, float* @slaev2_.tb, align 4
  %164 = fneg float %163
  %165 = load float, float* @slaev2_.cs, align 4
  %166 = fdiv float %164, %165
  store float %166, float* @slaev2_.ct, align 4
  %167 = load float, float* @slaev2_.ct, align 4
  %168 = load float, float* @slaev2_.ct, align 4
  %169 = fmul float %167, %168
  %170 = fadd float %169, 1.000000e+00
  %171 = call float @sqrt(float %170)
  %172 = fdiv float 1.000000e+00, %171
  %173 = load float*, float** %14, align 8
  store float %172, float* %173, align 4
  %174 = load float, float* @slaev2_.ct, align 4
  %175 = load float*, float** %14, align 8
  %176 = load float, float* %175, align 4
  %177 = fmul float %174, %176
  %178 = load float*, float** %13, align 8
  store float %177, float* %178, align 4
  br label %203

179:                                              ; preds = %156
  %180 = load float, float* @slaev2_.ab, align 4
  %181 = fcmp oeq float %180, 0.000000e+00
  br i1 %181, label %182, label %185

182:                                              ; preds = %179
  %183 = load float*, float** %13, align 8
  store float 1.000000e+00, float* %183, align 4
  %184 = load float*, float** %14, align 8
  store float 0.000000e+00, float* %184, align 4
  br label %202

185:                                              ; preds = %179
  %186 = load float, float* @slaev2_.cs, align 4
  %187 = fneg float %186
  %188 = load float, float* @slaev2_.tb, align 4
  %189 = fdiv float %187, %188
  store float %189, float* @slaev2_.tn, align 4
  %190 = load float, float* @slaev2_.tn, align 4
  %191 = load float, float* @slaev2_.tn, align 4
  %192 = fmul float %190, %191
  %193 = fadd float %192, 1.000000e+00
  %194 = call float @sqrt(float %193)
  %195 = fdiv float 1.000000e+00, %194
  %196 = load float*, float** %13, align 8
  store float %195, float* %196, align 4
  %197 = load float, float* @slaev2_.tn, align 4
  %198 = load float*, float** %13, align 8
  %199 = load float, float* %198, align 4
  %200 = fmul float %197, %199
  %201 = load float*, float** %14, align 8
  store float %200, float* %201, align 4
  br label %202

202:                                              ; preds = %185, %182
  br label %203

203:                                              ; preds = %202, %162
  %204 = load i32, i32* @slaev2_.sgn1, align 4
  %205 = load i32, i32* @slaev2_.sgn2, align 4
  %206 = icmp eq i32 %204, %205
  br i1 %206, label %207, label %216

207:                                              ; preds = %203
  %208 = load float*, float** %13, align 8
  %209 = load float, float* %208, align 4
  store float %209, float* @slaev2_.tn, align 4
  %210 = load float*, float** %14, align 8
  %211 = load float, float* %210, align 4
  %212 = fneg float %211
  %213 = load float*, float** %13, align 8
  store float %212, float* %213, align 4
  %214 = load float, float* @slaev2_.tn, align 4
  %215 = load float*, float** %14, align 8
  store float %214, float* %215, align 4
  br label %216

216:                                              ; preds = %207, %203
  ret i32 0
}

declare dso_local float @dabs(float) #1

declare dso_local float @sqrt(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
