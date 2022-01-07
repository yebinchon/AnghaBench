; ModuleID = '/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_nanovg.c_nvgLerpRGBA.c'
source_filename = "/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_nanovg.c_nvgLerpRGBA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { float*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { float*, i32 } @nvgLerpRGBA(float* %0, i32 %1, float* %2, i32 %3, float %4) #0 {
  %6 = alloca %struct.TYPE_5__, align 8
  %7 = alloca %struct.TYPE_5__, align 8
  %8 = alloca %struct.TYPE_5__, align 8
  %9 = alloca float, align 4
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = bitcast %struct.TYPE_5__* %7 to { float*, i32 }*
  %13 = getelementptr inbounds { float*, i32 }, { float*, i32 }* %12, i32 0, i32 0
  store float* %0, float** %13, align 8
  %14 = getelementptr inbounds { float*, i32 }, { float*, i32 }* %12, i32 0, i32 1
  store i32 %1, i32* %14, align 8
  %15 = bitcast %struct.TYPE_5__* %8 to { float*, i32 }*
  %16 = getelementptr inbounds { float*, i32 }, { float*, i32 }* %15, i32 0, i32 0
  store float* %2, float** %16, align 8
  %17 = getelementptr inbounds { float*, i32 }, { float*, i32 }* %15, i32 0, i32 1
  store i32 %3, i32* %17, align 8
  store float %4, float* %9, align 4
  %18 = bitcast %struct.TYPE_5__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %18, i8 0, i64 16, i1 false)
  %19 = load float, float* %9, align 4
  %20 = call float @nvg__clampf(float %19, float 0.000000e+00, float 1.000000e+00)
  store float %20, float* %9, align 4
  %21 = load float, float* %9, align 4
  %22 = fsub float 1.000000e+00, %21
  store float %22, float* %11, align 4
  store i32 0, i32* %10, align 4
  br label %23

23:                                               ; preds = %49, %5
  %24 = load i32, i32* %10, align 4
  %25 = icmp slt i32 %24, 4
  br i1 %25, label %26, label %52

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %28 = load float*, float** %27, align 8
  %29 = load i32, i32* %10, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds float, float* %28, i64 %30
  %32 = load float, float* %31, align 4
  %33 = load float, float* %11, align 4
  %34 = fmul float %32, %33
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %36 = load float*, float** %35, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds float, float* %36, i64 %38
  %40 = load float, float* %39, align 4
  %41 = load float, float* %9, align 4
  %42 = fmul float %40, %41
  %43 = fadd float %34, %42
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %45 = load float*, float** %44, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds float, float* %45, i64 %47
  store float %43, float* %48, align 4
  br label %49

49:                                               ; preds = %26
  %50 = load i32, i32* %10, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %10, align 4
  br label %23

52:                                               ; preds = %23
  %53 = bitcast %struct.TYPE_5__* %6 to { float*, i32 }*
  %54 = load { float*, i32 }, { float*, i32 }* %53, align 8
  ret { float*, i32 } %54
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local float @nvg__clampf(float, float, float) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
