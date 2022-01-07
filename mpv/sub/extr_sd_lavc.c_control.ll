; ModuleID = '/home/carl/AnghaBench/mpv/sub/extr_sd_lavc.c_control.c'
source_filename = "/home/carl/AnghaBench/mpv/sub/extr_sd_lavc.c_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { %struct.sd_lavc_priv* }
%struct.sd_lavc_priv = type { %struct.mp_image_params }
%struct.mp_image_params = type { i32 }

@MP_NOPTS_VALUE = common dso_local global double 0.000000e+00, align 8
@CONTROL_OK = common dso_local global i32 0, align 4
@CONTROL_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sd*, i32, i8*)* @control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @control(%struct.sd* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.sd_lavc_priv*, align 8
  %9 = alloca double*, align 8
  %10 = alloca double, align 8
  store %struct.sd* %0, %struct.sd** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %11 = load %struct.sd*, %struct.sd** %5, align 8
  %12 = getelementptr inbounds %struct.sd, %struct.sd* %11, i32 0, i32 0
  %13 = load %struct.sd_lavc_priv*, %struct.sd_lavc_priv** %12, align 8
  store %struct.sd_lavc_priv* %13, %struct.sd_lavc_priv** %8, align 8
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %42 [
    i32 128, label %15
    i32 129, label %34
  ]

15:                                               ; preds = %3
  %16 = load i8*, i8** %7, align 8
  %17 = bitcast i8* %16 to double*
  store double* %17, double** %9, align 8
  %18 = load %struct.sd*, %struct.sd** %5, align 8
  %19 = load double*, double** %9, align 8
  %20 = getelementptr inbounds double, double* %19, i64 0
  %21 = load double, double* %20, align 8
  %22 = load double*, double** %9, align 8
  %23 = getelementptr inbounds double, double* %22, i64 1
  %24 = load double, double* %23, align 8
  %25 = call double @step_sub(%struct.sd* %18, double %21, double %24)
  store double %25, double* %10, align 8
  %26 = load double, double* %10, align 8
  %27 = load double, double* @MP_NOPTS_VALUE, align 8
  %28 = fcmp oeq double %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %44

30:                                               ; preds = %15
  %31 = load double, double* %10, align 8
  %32 = load double*, double** %9, align 8
  %33 = getelementptr inbounds double, double* %32, i64 0
  store double %31, double* %33, align 8
  store i32 1, i32* %4, align 4
  br label %44

34:                                               ; preds = %3
  %35 = load %struct.sd_lavc_priv*, %struct.sd_lavc_priv** %8, align 8
  %36 = getelementptr inbounds %struct.sd_lavc_priv, %struct.sd_lavc_priv* %35, i32 0, i32 0
  %37 = load i8*, i8** %7, align 8
  %38 = bitcast i8* %37 to %struct.mp_image_params*
  %39 = bitcast %struct.mp_image_params* %36 to i8*
  %40 = bitcast %struct.mp_image_params* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %39, i8* align 4 %40, i64 4, i1 false)
  %41 = load i32, i32* @CONTROL_OK, align 4
  store i32 %41, i32* %4, align 4
  br label %44

42:                                               ; preds = %3
  %43 = load i32, i32* @CONTROL_UNKNOWN, align 4
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %42, %34, %30, %29
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local double @step_sub(%struct.sd*, double, double) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
