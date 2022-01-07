; ModuleID = '/home/carl/AnghaBench/mpv/video/extr_csputils.c_mp_mul_matrix3x3.c'
source_filename = "/home/carl/AnghaBench/mpv/video/extr_csputils.c_mp_mul_matrix3x3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void ([3 x float]*, [3 x float]*)* @mp_mul_matrix3x3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mp_mul_matrix3x3([3 x float]* %0, [3 x float]* %1) #0 {
  %3 = alloca [3 x float]*, align 8
  %4 = alloca [3 x float]*, align 8
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca i32, align 4
  store [3 x float]* %0, [3 x float]** %3, align 8
  store [3 x float]* %1, [3 x float]** %4, align 8
  %15 = load [3 x float]*, [3 x float]** %3, align 8
  %16 = getelementptr inbounds [3 x float], [3 x float]* %15, i64 0
  %17 = getelementptr inbounds [3 x float], [3 x float]* %16, i64 0, i64 0
  %18 = load float, float* %17, align 4
  store float %18, float* %5, align 4
  %19 = load [3 x float]*, [3 x float]** %3, align 8
  %20 = getelementptr inbounds [3 x float], [3 x float]* %19, i64 0
  %21 = getelementptr inbounds [3 x float], [3 x float]* %20, i64 0, i64 1
  %22 = load float, float* %21, align 4
  store float %22, float* %6, align 4
  %23 = load [3 x float]*, [3 x float]** %3, align 8
  %24 = getelementptr inbounds [3 x float], [3 x float]* %23, i64 0
  %25 = getelementptr inbounds [3 x float], [3 x float]* %24, i64 0, i64 2
  %26 = load float, float* %25, align 4
  store float %26, float* %7, align 4
  %27 = load [3 x float]*, [3 x float]** %3, align 8
  %28 = getelementptr inbounds [3 x float], [3 x float]* %27, i64 1
  %29 = getelementptr inbounds [3 x float], [3 x float]* %28, i64 0, i64 0
  %30 = load float, float* %29, align 4
  store float %30, float* %8, align 4
  %31 = load [3 x float]*, [3 x float]** %3, align 8
  %32 = getelementptr inbounds [3 x float], [3 x float]* %31, i64 1
  %33 = getelementptr inbounds [3 x float], [3 x float]* %32, i64 0, i64 1
  %34 = load float, float* %33, align 4
  store float %34, float* %9, align 4
  %35 = load [3 x float]*, [3 x float]** %3, align 8
  %36 = getelementptr inbounds [3 x float], [3 x float]* %35, i64 1
  %37 = getelementptr inbounds [3 x float], [3 x float]* %36, i64 0, i64 2
  %38 = load float, float* %37, align 4
  store float %38, float* %10, align 4
  %39 = load [3 x float]*, [3 x float]** %3, align 8
  %40 = getelementptr inbounds [3 x float], [3 x float]* %39, i64 2
  %41 = getelementptr inbounds [3 x float], [3 x float]* %40, i64 0, i64 0
  %42 = load float, float* %41, align 4
  store float %42, float* %11, align 4
  %43 = load [3 x float]*, [3 x float]** %3, align 8
  %44 = getelementptr inbounds [3 x float], [3 x float]* %43, i64 2
  %45 = getelementptr inbounds [3 x float], [3 x float]* %44, i64 0, i64 1
  %46 = load float, float* %45, align 4
  store float %46, float* %12, align 4
  %47 = load [3 x float]*, [3 x float]** %3, align 8
  %48 = getelementptr inbounds [3 x float], [3 x float]* %47, i64 2
  %49 = getelementptr inbounds [3 x float], [3 x float]* %48, i64 0, i64 2
  %50 = load float, float* %49, align 4
  store float %50, float* %13, align 4
  store i32 0, i32* %14, align 4
  br label %51

51:                                               ; preds = %148, %2
  %52 = load i32, i32* %14, align 4
  %53 = icmp slt i32 %52, 3
  br i1 %53, label %54, label %151

54:                                               ; preds = %51
  %55 = load float, float* %5, align 4
  %56 = load [3 x float]*, [3 x float]** %4, align 8
  %57 = getelementptr inbounds [3 x float], [3 x float]* %56, i64 0
  %58 = load i32, i32* %14, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [3 x float], [3 x float]* %57, i64 0, i64 %59
  %61 = load float, float* %60, align 4
  %62 = fmul float %55, %61
  %63 = load float, float* %6, align 4
  %64 = load [3 x float]*, [3 x float]** %4, align 8
  %65 = getelementptr inbounds [3 x float], [3 x float]* %64, i64 1
  %66 = load i32, i32* %14, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [3 x float], [3 x float]* %65, i64 0, i64 %67
  %69 = load float, float* %68, align 4
  %70 = fmul float %63, %69
  %71 = fadd float %62, %70
  %72 = load float, float* %7, align 4
  %73 = load [3 x float]*, [3 x float]** %4, align 8
  %74 = getelementptr inbounds [3 x float], [3 x float]* %73, i64 2
  %75 = load i32, i32* %14, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [3 x float], [3 x float]* %74, i64 0, i64 %76
  %78 = load float, float* %77, align 4
  %79 = fmul float %72, %78
  %80 = fadd float %71, %79
  %81 = load [3 x float]*, [3 x float]** %3, align 8
  %82 = getelementptr inbounds [3 x float], [3 x float]* %81, i64 0
  %83 = load i32, i32* %14, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [3 x float], [3 x float]* %82, i64 0, i64 %84
  store float %80, float* %85, align 4
  %86 = load float, float* %8, align 4
  %87 = load [3 x float]*, [3 x float]** %4, align 8
  %88 = getelementptr inbounds [3 x float], [3 x float]* %87, i64 0
  %89 = load i32, i32* %14, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [3 x float], [3 x float]* %88, i64 0, i64 %90
  %92 = load float, float* %91, align 4
  %93 = fmul float %86, %92
  %94 = load float, float* %9, align 4
  %95 = load [3 x float]*, [3 x float]** %4, align 8
  %96 = getelementptr inbounds [3 x float], [3 x float]* %95, i64 1
  %97 = load i32, i32* %14, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [3 x float], [3 x float]* %96, i64 0, i64 %98
  %100 = load float, float* %99, align 4
  %101 = fmul float %94, %100
  %102 = fadd float %93, %101
  %103 = load float, float* %10, align 4
  %104 = load [3 x float]*, [3 x float]** %4, align 8
  %105 = getelementptr inbounds [3 x float], [3 x float]* %104, i64 2
  %106 = load i32, i32* %14, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [3 x float], [3 x float]* %105, i64 0, i64 %107
  %109 = load float, float* %108, align 4
  %110 = fmul float %103, %109
  %111 = fadd float %102, %110
  %112 = load [3 x float]*, [3 x float]** %3, align 8
  %113 = getelementptr inbounds [3 x float], [3 x float]* %112, i64 1
  %114 = load i32, i32* %14, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [3 x float], [3 x float]* %113, i64 0, i64 %115
  store float %111, float* %116, align 4
  %117 = load float, float* %11, align 4
  %118 = load [3 x float]*, [3 x float]** %4, align 8
  %119 = getelementptr inbounds [3 x float], [3 x float]* %118, i64 0
  %120 = load i32, i32* %14, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [3 x float], [3 x float]* %119, i64 0, i64 %121
  %123 = load float, float* %122, align 4
  %124 = fmul float %117, %123
  %125 = load float, float* %12, align 4
  %126 = load [3 x float]*, [3 x float]** %4, align 8
  %127 = getelementptr inbounds [3 x float], [3 x float]* %126, i64 1
  %128 = load i32, i32* %14, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [3 x float], [3 x float]* %127, i64 0, i64 %129
  %131 = load float, float* %130, align 4
  %132 = fmul float %125, %131
  %133 = fadd float %124, %132
  %134 = load float, float* %13, align 4
  %135 = load [3 x float]*, [3 x float]** %4, align 8
  %136 = getelementptr inbounds [3 x float], [3 x float]* %135, i64 2
  %137 = load i32, i32* %14, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [3 x float], [3 x float]* %136, i64 0, i64 %138
  %140 = load float, float* %139, align 4
  %141 = fmul float %134, %140
  %142 = fadd float %133, %141
  %143 = load [3 x float]*, [3 x float]** %3, align 8
  %144 = getelementptr inbounds [3 x float], [3 x float]* %143, i64 2
  %145 = load i32, i32* %14, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds [3 x float], [3 x float]* %144, i64 0, i64 %146
  store float %142, float* %147, align 4
  br label %148

148:                                              ; preds = %54
  %149 = load i32, i32* %14, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %14, align 4
  br label %51

151:                                              ; preds = %51
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
