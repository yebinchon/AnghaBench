; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_aspect.c_aspect_calc_panscan.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_aspect.c_aspect_calc_panscan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_vo_opts = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mp_vo_opts*, i32, i32, i32, i32, i32, i32, i32, double, i32*, i32*)* @aspect_calc_panscan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aspect_calc_panscan(%struct.mp_vo_opts* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, double %8, i32* %9, i32* %10) #0 {
  %12 = alloca %struct.mp_vo_opts*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca double, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca double, align 8
  %28 = alloca double, align 8
  store %struct.mp_vo_opts* %0, %struct.mp_vo_opts** %12, align 8
  store i32 %1, i32* %13, align 4
  store i32 %2, i32* %14, align 4
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store double %8, double* %20, align 8
  store i32* %9, i32** %21, align 8
  store i32* %10, i32** %22, align 8
  %29 = load double, double* %20, align 8
  %30 = load i32, i32* %13, align 4
  %31 = sitofp i32 %30 to double
  %32 = fmul double %31, %29
  %33 = fptosi double %32 to i32
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %18, align 4
  store i32 %34, i32* %23, align 4
  %35 = load i32, i32* %18, align 4
  %36 = sitofp i32 %35 to float
  %37 = load i32, i32* %15, align 4
  %38 = sitofp i32 %37 to float
  %39 = fdiv float %36, %38
  %40 = load i32, i32* %16, align 4
  %41 = sitofp i32 %40 to float
  %42 = fmul float %39, %41
  %43 = fpext float %42 to double
  %44 = load double, double* %20, align 8
  %45 = fdiv double %43, %44
  %46 = fptosi double %45 to i32
  store i32 %46, i32* %24, align 4
  %47 = load i32, i32* %24, align 4
  %48 = load i32, i32* %19, align 4
  %49 = icmp sgt i32 %47, %48
  br i1 %49, label %54, label %50

50:                                               ; preds = %11
  %51 = load i32, i32* %24, align 4
  %52 = load i32, i32* %14, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %74

54:                                               ; preds = %50, %11
  %55 = load i32, i32* %19, align 4
  %56 = sitofp i32 %55 to float
  %57 = load i32, i32* %16, align 4
  %58 = sitofp i32 %57 to float
  %59 = fdiv float %56, %58
  %60 = load i32, i32* %15, align 4
  %61 = sitofp i32 %60 to float
  %62 = fmul float %59, %61
  %63 = fpext float %62 to double
  %64 = load double, double* %20, align 8
  %65 = fmul double %63, %64
  %66 = fptosi double %65 to i32
  store i32 %66, i32* %25, align 4
  %67 = load i32, i32* %25, align 4
  %68 = load i32, i32* %18, align 4
  %69 = icmp sle i32 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %54
  %71 = load i32, i32* %19, align 4
  store i32 %71, i32* %24, align 4
  %72 = load i32, i32* %25, align 4
  store i32 %72, i32* %23, align 4
  br label %73

73:                                               ; preds = %70, %54
  br label %74

74:                                               ; preds = %73, %50
  %75 = load i32, i32* %19, align 4
  %76 = load i32, i32* %24, align 4
  %77 = sub nsw i32 %75, %76
  store i32 %77, i32* %26, align 4
  %78 = load i32, i32* %23, align 4
  %79 = sitofp i32 %78 to double
  %80 = load i32, i32* %24, align 4
  %81 = call i64 @MPMAX(i32 %80, i32 1)
  %82 = sitofp i64 %81 to double
  %83 = fdiv double %79, %82
  store double %83, double* %27, align 8
  store double 1.000000e+00, double* %28, align 8
  %84 = load i32, i32* %26, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %74
  %87 = load i32, i32* %18, align 4
  %88 = load i32, i32* %23, align 4
  %89 = sub nsw i32 %87, %88
  store i32 %89, i32* %26, align 4
  store double 1.000000e+00, double* %27, align 8
  %90 = load i32, i32* %24, align 4
  %91 = sitofp i32 %90 to double
  %92 = load i32, i32* %23, align 4
  %93 = call i64 @MPMAX(i32 %92, i32 1)
  %94 = sitofp i64 %93 to double
  %95 = fdiv double %91, %94
  store double %95, double* %28, align 8
  br label %96

96:                                               ; preds = %86, %74
  %97 = load i32, i32* %17, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %118

99:                                               ; preds = %96
  store i32 0, i32* %26, align 4
  %100 = load i32, i32* %17, align 4
  %101 = icmp ne i32 %100, 2
  br i1 %101, label %110, label %102

102:                                              ; preds = %99
  %103 = load i32, i32* %15, align 4
  %104 = load i32, i32* %18, align 4
  %105 = icmp sle i32 %103, %104
  br i1 %105, label %106, label %117

106:                                              ; preds = %102
  %107 = load i32, i32* %16, align 4
  %108 = load i32, i32* %19, align 4
  %109 = icmp sle i32 %107, %108
  br i1 %109, label %110, label %117

110:                                              ; preds = %106, %99
  %111 = load i32, i32* %15, align 4
  %112 = sitofp i32 %111 to double
  %113 = load double, double* %20, align 8
  %114 = fmul double %112, %113
  %115 = fptosi double %114 to i32
  store i32 %115, i32* %23, align 4
  %116 = load i32, i32* %16, align 4
  store i32 %116, i32* %24, align 4
  br label %117

117:                                              ; preds = %110, %106, %102
  br label %118

118:                                              ; preds = %117, %96
  %119 = load i32, i32* %23, align 4
  %120 = sitofp i32 %119 to double
  %121 = load i32, i32* %26, align 4
  %122 = load %struct.mp_vo_opts*, %struct.mp_vo_opts** %12, align 8
  %123 = getelementptr inbounds %struct.mp_vo_opts, %struct.mp_vo_opts* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = mul nsw i32 %121, %124
  %126 = sitofp i32 %125 to double
  %127 = load double, double* %27, align 8
  %128 = fmul double %126, %127
  %129 = fadd double %120, %128
  %130 = fptosi double %129 to i32
  %131 = load i32*, i32** %21, align 8
  store i32 %130, i32* %131, align 4
  %132 = load i32, i32* %24, align 4
  %133 = sitofp i32 %132 to double
  %134 = load i32, i32* %26, align 4
  %135 = load %struct.mp_vo_opts*, %struct.mp_vo_opts** %12, align 8
  %136 = getelementptr inbounds %struct.mp_vo_opts, %struct.mp_vo_opts* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = mul nsw i32 %134, %137
  %139 = sitofp i32 %138 to double
  %140 = load double, double* %28, align 8
  %141 = fmul double %139, %140
  %142 = fadd double %133, %141
  %143 = fptosi double %142 to i32
  %144 = load i32*, i32** %22, align 8
  store i32 %143, i32* %144, align 4
  ret void
}

declare dso_local i64 @MPMAX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
