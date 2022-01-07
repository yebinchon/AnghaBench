; ModuleID = '/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_nanovg.c_nvg__chooseBevel.c'
source_filename = "/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_nanovg.c_nvg__chooseBevel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { float, float, float, float, float, float }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_4__*, %struct.TYPE_4__*, float, float*, float*, float*, float*)* @nvg__chooseBevel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvg__chooseBevel(i32 %0, %struct.TYPE_4__* %1, %struct.TYPE_4__* %2, float %3, float* %4, float* %5, float* %6, float* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca float, align 4
  %13 = alloca float*, align 8
  %14 = alloca float*, align 8
  %15 = alloca float*, align 8
  %16 = alloca float*, align 8
  store i32 %0, i32* %9, align 4
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %10, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %11, align 8
  store float %3, float* %12, align 4
  store float* %4, float** %13, align 8
  store float* %5, float** %14, align 8
  store float* %6, float** %15, align 8
  store float* %7, float** %16, align 8
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %60

19:                                               ; preds = %8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load float, float* %21, align 4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load float, float* %24, align 4
  %26 = load float, float* %12, align 4
  %27 = fmul float %25, %26
  %28 = fadd float %22, %27
  %29 = load float*, float** %13, align 8
  store float %28, float* %29, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  %32 = load float, float* %31, align 4
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 3
  %35 = load float, float* %34, align 4
  %36 = load float, float* %12, align 4
  %37 = fmul float %35, %36
  %38 = fsub float %32, %37
  %39 = load float*, float** %14, align 8
  store float %38, float* %39, align 4
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load float, float* %41, align 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load float, float* %44, align 4
  %46 = load float, float* %12, align 4
  %47 = fmul float %45, %46
  %48 = fadd float %42, %47
  %49 = load float*, float** %15, align 8
  store float %48, float* %49, align 4
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 2
  %52 = load float, float* %51, align 4
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 3
  %55 = load float, float* %54, align 4
  %56 = load float, float* %12, align 4
  %57 = fmul float %55, %56
  %58 = fsub float %52, %57
  %59 = load float*, float** %16, align 8
  store float %58, float* %59, align 4
  br label %101

60:                                               ; preds = %8
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load float, float* %62, align 4
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 4
  %66 = load float, float* %65, align 4
  %67 = load float, float* %12, align 4
  %68 = fmul float %66, %67
  %69 = fadd float %63, %68
  %70 = load float*, float** %13, align 8
  store float %69, float* %70, align 4
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 2
  %73 = load float, float* %72, align 4
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 5
  %76 = load float, float* %75, align 4
  %77 = load float, float* %12, align 4
  %78 = fmul float %76, %77
  %79 = fadd float %73, %78
  %80 = load float*, float** %14, align 8
  store float %79, float* %80, align 4
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load float, float* %82, align 4
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 4
  %86 = load float, float* %85, align 4
  %87 = load float, float* %12, align 4
  %88 = fmul float %86, %87
  %89 = fadd float %83, %88
  %90 = load float*, float** %15, align 8
  store float %89, float* %90, align 4
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 2
  %93 = load float, float* %92, align 4
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 5
  %96 = load float, float* %95, align 4
  %97 = load float, float* %12, align 4
  %98 = fmul float %96, %97
  %99 = fadd float %93, %98
  %100 = load float*, float** %16, align 8
  store float %99, float* %100, align 4
  br label %101

101:                                              ; preds = %60, %19
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
