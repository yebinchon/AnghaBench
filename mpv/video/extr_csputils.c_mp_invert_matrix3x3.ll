; ModuleID = '/home/carl/AnghaBench/mpv/video/extr_csputils.c_mp_invert_matrix3x3.c'
source_filename = "/home/carl/AnghaBench/mpv/video/extr_csputils.c_mp_invert_matrix3x3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_invert_matrix3x3([3 x float]* %0) #0 {
  %2 = alloca [3 x float]*, align 8
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store [3 x float]* %0, [3 x float]** %2, align 8
  %15 = load [3 x float]*, [3 x float]** %2, align 8
  %16 = getelementptr inbounds [3 x float], [3 x float]* %15, i64 0
  %17 = getelementptr inbounds [3 x float], [3 x float]* %16, i64 0, i64 0
  %18 = load float, float* %17, align 4
  store float %18, float* %3, align 4
  %19 = load [3 x float]*, [3 x float]** %2, align 8
  %20 = getelementptr inbounds [3 x float], [3 x float]* %19, i64 0
  %21 = getelementptr inbounds [3 x float], [3 x float]* %20, i64 0, i64 1
  %22 = load float, float* %21, align 4
  store float %22, float* %4, align 4
  %23 = load [3 x float]*, [3 x float]** %2, align 8
  %24 = getelementptr inbounds [3 x float], [3 x float]* %23, i64 0
  %25 = getelementptr inbounds [3 x float], [3 x float]* %24, i64 0, i64 2
  %26 = load float, float* %25, align 4
  store float %26, float* %5, align 4
  %27 = load [3 x float]*, [3 x float]** %2, align 8
  %28 = getelementptr inbounds [3 x float], [3 x float]* %27, i64 1
  %29 = getelementptr inbounds [3 x float], [3 x float]* %28, i64 0, i64 0
  %30 = load float, float* %29, align 4
  store float %30, float* %6, align 4
  %31 = load [3 x float]*, [3 x float]** %2, align 8
  %32 = getelementptr inbounds [3 x float], [3 x float]* %31, i64 1
  %33 = getelementptr inbounds [3 x float], [3 x float]* %32, i64 0, i64 1
  %34 = load float, float* %33, align 4
  store float %34, float* %7, align 4
  %35 = load [3 x float]*, [3 x float]** %2, align 8
  %36 = getelementptr inbounds [3 x float], [3 x float]* %35, i64 1
  %37 = getelementptr inbounds [3 x float], [3 x float]* %36, i64 0, i64 2
  %38 = load float, float* %37, align 4
  store float %38, float* %8, align 4
  %39 = load [3 x float]*, [3 x float]** %2, align 8
  %40 = getelementptr inbounds [3 x float], [3 x float]* %39, i64 2
  %41 = getelementptr inbounds [3 x float], [3 x float]* %40, i64 0, i64 0
  %42 = load float, float* %41, align 4
  store float %42, float* %9, align 4
  %43 = load [3 x float]*, [3 x float]** %2, align 8
  %44 = getelementptr inbounds [3 x float], [3 x float]* %43, i64 2
  %45 = getelementptr inbounds [3 x float], [3 x float]* %44, i64 0, i64 1
  %46 = load float, float* %45, align 4
  store float %46, float* %10, align 4
  %47 = load [3 x float]*, [3 x float]** %2, align 8
  %48 = getelementptr inbounds [3 x float], [3 x float]* %47, i64 2
  %49 = getelementptr inbounds [3 x float], [3 x float]* %48, i64 0, i64 2
  %50 = load float, float* %49, align 4
  store float %50, float* %11, align 4
  %51 = load float, float* %7, align 4
  %52 = load float, float* %11, align 4
  %53 = fmul float %51, %52
  %54 = load float, float* %10, align 4
  %55 = load float, float* %8, align 4
  %56 = fmul float %54, %55
  %57 = fsub float %53, %56
  %58 = load [3 x float]*, [3 x float]** %2, align 8
  %59 = getelementptr inbounds [3 x float], [3 x float]* %58, i64 0
  %60 = getelementptr inbounds [3 x float], [3 x float]* %59, i64 0, i64 0
  store float %57, float* %60, align 4
  %61 = load float, float* %4, align 4
  %62 = load float, float* %11, align 4
  %63 = fmul float %61, %62
  %64 = load float, float* %10, align 4
  %65 = load float, float* %5, align 4
  %66 = fmul float %64, %65
  %67 = fsub float %63, %66
  %68 = fneg float %67
  %69 = load [3 x float]*, [3 x float]** %2, align 8
  %70 = getelementptr inbounds [3 x float], [3 x float]* %69, i64 0
  %71 = getelementptr inbounds [3 x float], [3 x float]* %70, i64 0, i64 1
  store float %68, float* %71, align 4
  %72 = load float, float* %4, align 4
  %73 = load float, float* %8, align 4
  %74 = fmul float %72, %73
  %75 = load float, float* %7, align 4
  %76 = load float, float* %5, align 4
  %77 = fmul float %75, %76
  %78 = fsub float %74, %77
  %79 = load [3 x float]*, [3 x float]** %2, align 8
  %80 = getelementptr inbounds [3 x float], [3 x float]* %79, i64 0
  %81 = getelementptr inbounds [3 x float], [3 x float]* %80, i64 0, i64 2
  store float %78, float* %81, align 4
  %82 = load float, float* %6, align 4
  %83 = load float, float* %11, align 4
  %84 = fmul float %82, %83
  %85 = load float, float* %9, align 4
  %86 = load float, float* %8, align 4
  %87 = fmul float %85, %86
  %88 = fsub float %84, %87
  %89 = fneg float %88
  %90 = load [3 x float]*, [3 x float]** %2, align 8
  %91 = getelementptr inbounds [3 x float], [3 x float]* %90, i64 1
  %92 = getelementptr inbounds [3 x float], [3 x float]* %91, i64 0, i64 0
  store float %89, float* %92, align 4
  %93 = load float, float* %3, align 4
  %94 = load float, float* %11, align 4
  %95 = fmul float %93, %94
  %96 = load float, float* %9, align 4
  %97 = load float, float* %5, align 4
  %98 = fmul float %96, %97
  %99 = fsub float %95, %98
  %100 = load [3 x float]*, [3 x float]** %2, align 8
  %101 = getelementptr inbounds [3 x float], [3 x float]* %100, i64 1
  %102 = getelementptr inbounds [3 x float], [3 x float]* %101, i64 0, i64 1
  store float %99, float* %102, align 4
  %103 = load float, float* %3, align 4
  %104 = load float, float* %8, align 4
  %105 = fmul float %103, %104
  %106 = load float, float* %6, align 4
  %107 = load float, float* %5, align 4
  %108 = fmul float %106, %107
  %109 = fsub float %105, %108
  %110 = fneg float %109
  %111 = load [3 x float]*, [3 x float]** %2, align 8
  %112 = getelementptr inbounds [3 x float], [3 x float]* %111, i64 1
  %113 = getelementptr inbounds [3 x float], [3 x float]* %112, i64 0, i64 2
  store float %110, float* %113, align 4
  %114 = load float, float* %6, align 4
  %115 = load float, float* %10, align 4
  %116 = fmul float %114, %115
  %117 = load float, float* %9, align 4
  %118 = load float, float* %7, align 4
  %119 = fmul float %117, %118
  %120 = fsub float %116, %119
  %121 = load [3 x float]*, [3 x float]** %2, align 8
  %122 = getelementptr inbounds [3 x float], [3 x float]* %121, i64 2
  %123 = getelementptr inbounds [3 x float], [3 x float]* %122, i64 0, i64 0
  store float %120, float* %123, align 4
  %124 = load float, float* %3, align 4
  %125 = load float, float* %10, align 4
  %126 = fmul float %124, %125
  %127 = load float, float* %9, align 4
  %128 = load float, float* %4, align 4
  %129 = fmul float %127, %128
  %130 = fsub float %126, %129
  %131 = fneg float %130
  %132 = load [3 x float]*, [3 x float]** %2, align 8
  %133 = getelementptr inbounds [3 x float], [3 x float]* %132, i64 2
  %134 = getelementptr inbounds [3 x float], [3 x float]* %133, i64 0, i64 1
  store float %131, float* %134, align 4
  %135 = load float, float* %3, align 4
  %136 = load float, float* %7, align 4
  %137 = fmul float %135, %136
  %138 = load float, float* %6, align 4
  %139 = load float, float* %4, align 4
  %140 = fmul float %138, %139
  %141 = fsub float %137, %140
  %142 = load [3 x float]*, [3 x float]** %2, align 8
  %143 = getelementptr inbounds [3 x float], [3 x float]* %142, i64 2
  %144 = getelementptr inbounds [3 x float], [3 x float]* %143, i64 0, i64 2
  store float %141, float* %144, align 4
  %145 = load float, float* %3, align 4
  %146 = load [3 x float]*, [3 x float]** %2, align 8
  %147 = getelementptr inbounds [3 x float], [3 x float]* %146, i64 0
  %148 = getelementptr inbounds [3 x float], [3 x float]* %147, i64 0, i64 0
  %149 = load float, float* %148, align 4
  %150 = fmul float %145, %149
  %151 = load float, float* %6, align 4
  %152 = load [3 x float]*, [3 x float]** %2, align 8
  %153 = getelementptr inbounds [3 x float], [3 x float]* %152, i64 0
  %154 = getelementptr inbounds [3 x float], [3 x float]* %153, i64 0, i64 1
  %155 = load float, float* %154, align 4
  %156 = fmul float %151, %155
  %157 = fadd float %150, %156
  %158 = load float, float* %9, align 4
  %159 = load [3 x float]*, [3 x float]** %2, align 8
  %160 = getelementptr inbounds [3 x float], [3 x float]* %159, i64 0
  %161 = getelementptr inbounds [3 x float], [3 x float]* %160, i64 0, i64 2
  %162 = load float, float* %161, align 4
  %163 = fmul float %158, %162
  %164 = fadd float %157, %163
  store float %164, float* %12, align 4
  %165 = load float, float* %12, align 4
  %166 = fdiv float 1.000000e+00, %165
  store float %166, float* %12, align 4
  store i32 0, i32* %13, align 4
  br label %167

167:                                              ; preds = %189, %1
  %168 = load i32, i32* %13, align 4
  %169 = icmp slt i32 %168, 3
  br i1 %169, label %170, label %192

170:                                              ; preds = %167
  store i32 0, i32* %14, align 4
  br label %171

171:                                              ; preds = %185, %170
  %172 = load i32, i32* %14, align 4
  %173 = icmp slt i32 %172, 3
  br i1 %173, label %174, label %188

174:                                              ; preds = %171
  %175 = load float, float* %12, align 4
  %176 = load [3 x float]*, [3 x float]** %2, align 8
  %177 = load i32, i32* %13, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds [3 x float], [3 x float]* %176, i64 %178
  %180 = load i32, i32* %14, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds [3 x float], [3 x float]* %179, i64 0, i64 %181
  %183 = load float, float* %182, align 4
  %184 = fmul float %183, %175
  store float %184, float* %182, align 4
  br label %185

185:                                              ; preds = %174
  %186 = load i32, i32* %14, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %14, align 4
  br label %171

188:                                              ; preds = %171
  br label %189

189:                                              ; preds = %188
  %190 = load i32, i32* %13, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %13, align 4
  br label %167

192:                                              ; preds = %167
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
