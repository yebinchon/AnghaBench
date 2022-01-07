; ModuleID = '/home/carl/AnghaBench/mpv/video/out/opengl/extr_hwdec_drmprime_drm.c_scale_dst_rect.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/opengl/extr_hwdec_drmprime_drm.c_scale_dst_rect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_hwdec = type { %struct.priv* }
%struct.priv = type { double, double }
%struct.mp_rect = type { double, double, double, double }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ra_hwdec*, i32, i32, %struct.mp_rect*, %struct.mp_rect*)* @scale_dst_rect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scale_dst_rect(%struct.ra_hwdec* %0, i32 %1, i32 %2, %struct.mp_rect* %3, %struct.mp_rect* %4) #0 {
  %6 = alloca %struct.ra_hwdec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mp_rect*, align 8
  %10 = alloca %struct.mp_rect*, align 8
  %11 = alloca %struct.priv*, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ra_hwdec* %0, %struct.ra_hwdec** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.mp_rect* %3, %struct.mp_rect** %9, align 8
  store %struct.mp_rect* %4, %struct.mp_rect** %10, align 8
  %17 = load %struct.ra_hwdec*, %struct.ra_hwdec** %6, align 8
  %18 = getelementptr inbounds %struct.ra_hwdec, %struct.ra_hwdec* %17, i32 0, i32 0
  %19 = load %struct.priv*, %struct.priv** %18, align 8
  store %struct.priv* %19, %struct.priv** %11, align 8
  %20 = load %struct.priv*, %struct.priv** %11, align 8
  %21 = getelementptr inbounds %struct.priv, %struct.priv* %20, i32 0, i32 0
  %22 = load double, double* %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sitofp i32 %23 to double
  %25 = fdiv double %22, %24
  store double %25, double* %12, align 8
  %26 = load %struct.priv*, %struct.priv** %11, align 8
  %27 = getelementptr inbounds %struct.priv, %struct.priv* %26, i32 0, i32 1
  %28 = load double, double* %27, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sitofp i32 %29 to double
  %31 = fdiv double %28, %30
  store double %31, double* %13, align 8
  %32 = load double, double* %12, align 8
  %33 = load double, double* %13, align 8
  %34 = fcmp ole double %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %5
  %36 = load double, double* %12, align 8
  br label %39

37:                                               ; preds = %5
  %38 = load double, double* %13, align 8
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi double [ %36, %35 ], [ %38, %37 ]
  store double %40, double* %14, align 8
  %41 = load %struct.mp_rect*, %struct.mp_rect** %9, align 8
  %42 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %41, i32 0, i32 0
  %43 = load double, double* %42, align 8
  %44 = load double, double* %14, align 8
  %45 = fmul double %43, %44
  %46 = load %struct.mp_rect*, %struct.mp_rect** %10, align 8
  %47 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %46, i32 0, i32 0
  store double %45, double* %47, align 8
  %48 = load %struct.mp_rect*, %struct.mp_rect** %9, align 8
  %49 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %48, i32 0, i32 1
  %50 = load double, double* %49, align 8
  %51 = load double, double* %14, align 8
  %52 = fmul double %50, %51
  %53 = load %struct.mp_rect*, %struct.mp_rect** %10, align 8
  %54 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %53, i32 0, i32 1
  store double %52, double* %54, align 8
  %55 = load %struct.mp_rect*, %struct.mp_rect** %9, align 8
  %56 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %55, i32 0, i32 2
  %57 = load double, double* %56, align 8
  %58 = load double, double* %14, align 8
  %59 = fmul double %57, %58
  %60 = load %struct.mp_rect*, %struct.mp_rect** %10, align 8
  %61 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %60, i32 0, i32 2
  store double %59, double* %61, align 8
  %62 = load %struct.mp_rect*, %struct.mp_rect** %9, align 8
  %63 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %62, i32 0, i32 3
  %64 = load double, double* %63, align 8
  %65 = load double, double* %14, align 8
  %66 = fmul double %64, %65
  %67 = load %struct.mp_rect*, %struct.mp_rect** %10, align 8
  %68 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %67, i32 0, i32 3
  store double %66, double* %68, align 8
  %69 = load %struct.priv*, %struct.priv** %11, align 8
  %70 = getelementptr inbounds %struct.priv, %struct.priv* %69, i32 0, i32 0
  %71 = load double, double* %70, align 8
  %72 = load double, double* %14, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sitofp i32 %73 to double
  %75 = fmul double %72, %74
  %76 = fsub double %71, %75
  %77 = fdiv double %76, 2.000000e+00
  %78 = fptosi double %77 to i32
  store i32 %78, i32* %15, align 4
  %79 = load %struct.priv*, %struct.priv** %11, align 8
  %80 = getelementptr inbounds %struct.priv, %struct.priv* %79, i32 0, i32 1
  %81 = load double, double* %80, align 8
  %82 = load double, double* %14, align 8
  %83 = load i32, i32* %8, align 4
  %84 = sitofp i32 %83 to double
  %85 = fmul double %82, %84
  %86 = fsub double %81, %85
  %87 = fdiv double %86, 2.000000e+00
  %88 = fptosi double %87 to i32
  store i32 %88, i32* %16, align 4
  %89 = load i32, i32* %15, align 4
  %90 = sitofp i32 %89 to double
  %91 = load %struct.mp_rect*, %struct.mp_rect** %10, align 8
  %92 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %91, i32 0, i32 0
  %93 = load double, double* %92, align 8
  %94 = fadd double %93, %90
  store double %94, double* %92, align 8
  %95 = load i32, i32* %15, align 4
  %96 = sitofp i32 %95 to double
  %97 = load %struct.mp_rect*, %struct.mp_rect** %10, align 8
  %98 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %97, i32 0, i32 1
  %99 = load double, double* %98, align 8
  %100 = fadd double %99, %96
  store double %100, double* %98, align 8
  %101 = load i32, i32* %16, align 4
  %102 = sitofp i32 %101 to double
  %103 = load %struct.mp_rect*, %struct.mp_rect** %10, align 8
  %104 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %103, i32 0, i32 2
  %105 = load double, double* %104, align 8
  %106 = fadd double %105, %102
  store double %106, double* %104, align 8
  %107 = load i32, i32* %16, align 4
  %108 = sitofp i32 %107 to double
  %109 = load %struct.mp_rect*, %struct.mp_rect** %10, align 8
  %110 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %109, i32 0, i32 3
  %111 = load double, double* %110, align 8
  %112 = fadd double %111, %108
  store double %112, double* %110, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
