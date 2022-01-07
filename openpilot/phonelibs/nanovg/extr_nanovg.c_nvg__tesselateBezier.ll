; ModuleID = '/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_nanovg.c_nvg__tesselateBezier.c'
source_filename = "/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_nanovg.c_nvg__tesselateBezier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { float }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, float, float, float, float, float, float, float, float, i32, i32)* @nvg__tesselateBezier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvg__tesselateBezier(%struct.TYPE_4__* %0, float %1, float %2, float %3, float %4, float %5, float %6, float %7, float %8, i32 %9, i32 %10) #0 {
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  %25 = alloca float, align 4
  %26 = alloca float, align 4
  %27 = alloca float, align 4
  %28 = alloca float, align 4
  %29 = alloca float, align 4
  %30 = alloca float, align 4
  %31 = alloca float, align 4
  %32 = alloca float, align 4
  %33 = alloca float, align 4
  %34 = alloca float, align 4
  %35 = alloca float, align 4
  %36 = alloca float, align 4
  %37 = alloca float, align 4
  %38 = alloca float, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %12, align 8
  store float %1, float* %13, align 4
  store float %2, float* %14, align 4
  store float %3, float* %15, align 4
  store float %4, float* %16, align 4
  store float %5, float* %17, align 4
  store float %6, float* %18, align 4
  store float %7, float* %19, align 4
  store float %8, float* %20, align 4
  store i32 %9, i32* %21, align 4
  store i32 %10, i32* %22, align 4
  %39 = load i32, i32* %21, align 4
  %40 = icmp sgt i32 %39, 10
  br i1 %40, label %41, label %42

41:                                               ; preds = %11
  br label %170

42:                                               ; preds = %11
  %43 = load float, float* %13, align 4
  %44 = load float, float* %15, align 4
  %45 = fadd float %43, %44
  %46 = fmul float %45, 5.000000e-01
  store float %46, float* %23, align 4
  %47 = load float, float* %14, align 4
  %48 = load float, float* %16, align 4
  %49 = fadd float %47, %48
  %50 = fmul float %49, 5.000000e-01
  store float %50, float* %24, align 4
  %51 = load float, float* %15, align 4
  %52 = load float, float* %17, align 4
  %53 = fadd float %51, %52
  %54 = fmul float %53, 5.000000e-01
  store float %54, float* %25, align 4
  %55 = load float, float* %16, align 4
  %56 = load float, float* %18, align 4
  %57 = fadd float %55, %56
  %58 = fmul float %57, 5.000000e-01
  store float %58, float* %26, align 4
  %59 = load float, float* %17, align 4
  %60 = load float, float* %19, align 4
  %61 = fadd float %59, %60
  %62 = fmul float %61, 5.000000e-01
  store float %62, float* %27, align 4
  %63 = load float, float* %18, align 4
  %64 = load float, float* %20, align 4
  %65 = fadd float %63, %64
  %66 = fmul float %65, 5.000000e-01
  store float %66, float* %28, align 4
  %67 = load float, float* %23, align 4
  %68 = load float, float* %25, align 4
  %69 = fadd float %67, %68
  %70 = fmul float %69, 5.000000e-01
  store float %70, float* %29, align 4
  %71 = load float, float* %24, align 4
  %72 = load float, float* %26, align 4
  %73 = fadd float %71, %72
  %74 = fmul float %73, 5.000000e-01
  store float %74, float* %30, align 4
  %75 = load float, float* %19, align 4
  %76 = load float, float* %13, align 4
  %77 = fsub float %75, %76
  store float %77, float* %35, align 4
  %78 = load float, float* %20, align 4
  %79 = load float, float* %14, align 4
  %80 = fsub float %78, %79
  store float %80, float* %36, align 4
  %81 = load float, float* %15, align 4
  %82 = load float, float* %19, align 4
  %83 = fsub float %81, %82
  %84 = load float, float* %36, align 4
  %85 = fmul float %83, %84
  %86 = load float, float* %16, align 4
  %87 = load float, float* %20, align 4
  %88 = fsub float %86, %87
  %89 = load float, float* %35, align 4
  %90 = fmul float %88, %89
  %91 = fsub float %85, %90
  %92 = call float @nvg__absf(float %91)
  store float %92, float* %37, align 4
  %93 = load float, float* %17, align 4
  %94 = load float, float* %19, align 4
  %95 = fsub float %93, %94
  %96 = load float, float* %36, align 4
  %97 = fmul float %95, %96
  %98 = load float, float* %18, align 4
  %99 = load float, float* %20, align 4
  %100 = fsub float %98, %99
  %101 = load float, float* %35, align 4
  %102 = fmul float %100, %101
  %103 = fsub float %97, %102
  %104 = call float @nvg__absf(float %103)
  store float %104, float* %38, align 4
  %105 = load float, float* %37, align 4
  %106 = load float, float* %38, align 4
  %107 = fadd float %105, %106
  %108 = load float, float* %37, align 4
  %109 = load float, float* %38, align 4
  %110 = fadd float %108, %109
  %111 = fmul float %107, %110
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load float, float* %113, align 4
  %115 = load float, float* %35, align 4
  %116 = load float, float* %35, align 4
  %117 = fmul float %115, %116
  %118 = load float, float* %36, align 4
  %119 = load float, float* %36, align 4
  %120 = fmul float %118, %119
  %121 = fadd float %117, %120
  %122 = fmul float %114, %121
  %123 = fcmp olt float %111, %122
  br i1 %123, label %124, label %130

124:                                              ; preds = %42
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %126 = load float, float* %19, align 4
  %127 = load float, float* %20, align 4
  %128 = load i32, i32* %22, align 4
  %129 = call i32 @nvg__addPoint(%struct.TYPE_4__* %125, float %126, float %127, i32 %128)
  br label %170

130:                                              ; preds = %42
  %131 = load float, float* %25, align 4
  %132 = load float, float* %27, align 4
  %133 = fadd float %131, %132
  %134 = fmul float %133, 5.000000e-01
  store float %134, float* %31, align 4
  %135 = load float, float* %26, align 4
  %136 = load float, float* %28, align 4
  %137 = fadd float %135, %136
  %138 = fmul float %137, 5.000000e-01
  store float %138, float* %32, align 4
  %139 = load float, float* %29, align 4
  %140 = load float, float* %31, align 4
  %141 = fadd float %139, %140
  %142 = fmul float %141, 5.000000e-01
  store float %142, float* %33, align 4
  %143 = load float, float* %30, align 4
  %144 = load float, float* %32, align 4
  %145 = fadd float %143, %144
  %146 = fmul float %145, 5.000000e-01
  store float %146, float* %34, align 4
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %148 = load float, float* %13, align 4
  %149 = load float, float* %14, align 4
  %150 = load float, float* %23, align 4
  %151 = load float, float* %24, align 4
  %152 = load float, float* %29, align 4
  %153 = load float, float* %30, align 4
  %154 = load float, float* %33, align 4
  %155 = load float, float* %34, align 4
  %156 = load i32, i32* %21, align 4
  %157 = add nsw i32 %156, 1
  call void @nvg__tesselateBezier(%struct.TYPE_4__* %147, float %148, float %149, float %150, float %151, float %152, float %153, float %154, float %155, i32 %157, i32 0)
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %159 = load float, float* %33, align 4
  %160 = load float, float* %34, align 4
  %161 = load float, float* %31, align 4
  %162 = load float, float* %32, align 4
  %163 = load float, float* %27, align 4
  %164 = load float, float* %28, align 4
  %165 = load float, float* %19, align 4
  %166 = load float, float* %20, align 4
  %167 = load i32, i32* %21, align 4
  %168 = add nsw i32 %167, 1
  %169 = load i32, i32* %22, align 4
  call void @nvg__tesselateBezier(%struct.TYPE_4__* %158, float %159, float %160, float %161, float %162, float %163, float %164, float %165, float %166, i32 %168, i32 %169)
  br label %170

170:                                              ; preds = %130, %124, %41
  ret void
}

declare dso_local float @nvg__absf(float) #1

declare dso_local i32 @nvg__addPoint(%struct.TYPE_4__*, float, float, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
